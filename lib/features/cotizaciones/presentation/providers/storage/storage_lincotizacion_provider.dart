// ignore_for_file: avoid_print

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/features/cotizaciones/domain/domain.dart';
import 'package:xc_app_0/features/cotizaciones/presentation/providers/online/cotizaciones_repository_provider.dart';
import 'package:xc_app_0/features/cotizaciones/presentation/providers/storage/old_local_storage_provider.dart';

import '../../../domain/entities/artserv.dart';
import '../../../domain/repositories/old_local_storage_repository.dart';

final storageLinCotizacionProvider =
    StateNotifierProvider<StorageLincotizacionNotifier, Map<int, Artserv>>(
        (ref) {
  final localStorageRepository = ref.watch(localStorageRepositoryProvider);
  return StorageLincotizacionNotifier(
    cotizacionesRepository: ref.watch(cotizacionesRepositoryProvider),
    localStorageRepository: localStorageRepository,
  );
});

class StorageLincotizacionNotifier extends StateNotifier<Map<int, Artserv>> {
  final LocalStorageRepository localStorageRepository;
  final CotizacionesRepository cotizacionesRepository;

  StorageLincotizacionNotifier({
    required this.localStorageRepository,
    required this.cotizacionesRepository,
  }) : super({}) {
    loadLinCotizacion();
  }

  Future<void> loadLinCotizacion() async {
    try {
      final linCotizaciones =
          await localStorageRepository.getLineaCotizacionesLocal();
      if (linCotizaciones.isEmpty) {
        print('No hay Linea de Cotizaciones locales disponibles.');
        state = {};
        return;
      }
      final linCotizacionesMap = <int, Artserv>{};
      for (final linCotizacion in linCotizaciones) {
        linCotizacionesMap[linCotizacion.id] = linCotizacion;
      }
      state = {...state, ...linCotizacionesMap};
      print('Estado actualizado con Linea de Cotizaciones: $state');
    } catch (e) {
      print('Error al cargar Linea de Cotizaciones locales: $e');
    }
  }

  Future<void> saveLinCotizacion(Artserv linCotizacion) async {
    try {
      await localStorageRepository.saveLineaCotizacion(linCotizacion);
      state = {...state, linCotizacion.id: linCotizacion};
    } catch (e) {
      print('Error al guardar Linea de Cotización local: $e');
    }
  }

  Future<void> syncLinCotizaciones() async {
    try {
      final linCotizacionesFromApi =
          await cotizacionesRepository.getLineaPresupuesto();

      final linCotizacionesMap = Map<int, Artserv>.from(state);

      for (final linCotizacion in linCotizacionesFromApi) {
        if (linCotizacionesMap.containsKey(linCotizacion.id)) {
          print(
              'Actualizando Linea de Cotización Existente: ${linCotizacion.id}');
        } else {
          print('Guardando Linea de Cotización Nueva: ${linCotizacion.id}');
        }
        linCotizacionesMap[linCotizacion.id] = linCotizacion;
        await localStorageRepository.saveLineaCotizacion(linCotizacion);
      }
      state = {...state, ...linCotizacionesMap};
      print('Estado actualizado con Linea de Cotizaciones: $state');
    } catch (e) {
      print('Error al sincronizar Linea de Cotizaciones: $e');
    }
  }
}

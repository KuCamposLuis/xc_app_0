import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/features/cotizaciones/presentation/providers/online/providers.dart';

import '../../../domain/domain.dart';
import '../../../domain/repositories/old_local_storage_repository.dart';

final storageCotizacionProvider =
    StateNotifierProvider<StorageCotizacionNotifier, Map<int, Cotizacion>>(
        (ref) {
  final localStorageRepository = ref.watch(localStorageRepositoryProvider);
  return StorageCotizacionNotifier(
      cotizacionesRepository: ref.watch(cotizacionesRepositoryProvider),
      localStorageRepository: localStorageRepository);
});

class StorageCotizacionNotifier extends StateNotifier<Map<int, Cotizacion>> {
  final LocalStorageRepository localStorageRepository;
  final CotizacionesRepository cotizacionesRepository;

  StorageCotizacionNotifier({
    required this.localStorageRepository,
    required this.cotizacionesRepository,
  }) : super({}) {
    // Cargar cotizaciones locales al inicializar el Notifier
    loadCotizacion();
  }

  Future<void> loadCotizacion() async {
    try {
      final cotizaciones = await localStorageRepository.getCotizacionesLocal();
      if (cotizaciones.isEmpty) {
        print('No hay cotizaciones locales disponibles.');
        state = {};
        return;
      }
      final cotizacionesMap = <int, Cotizacion>{};
      for (final cotizacion in cotizaciones) {
        cotizacionesMap[cotizacion.id] = cotizacion;
      }
      state = {...state, ...cotizacionesMap};
      print('Estado actualizado con cotizaciones: $state');
    } catch (e) {
      print('Error al cargar cotizaciones locales: $e');
    }
  }

  Future<void> saveCotizacion(Cotizacion cotizacion) async {
    try {
      await localStorageRepository.saveCotizacion(cotizacion);
      state = {...state, cotizacion.id: cotizacion};
    } catch (e) {
      print('Error al guardar cotización local: $e');
    }
  }

  Future<void> syncCotizaciones() async {
    try {
      final cotizacionesFromApi = await cotizacionesRepository.getCotizacion();

      // Mapa temporal para las cotizaciones nuevas y actualizadas
      final cotizacionesMap = Map<int, Cotizacion>.from(state);

      for (final cotizacion in cotizacionesFromApi) {
        if (cotizacionesMap.containsKey(cotizacion.id)) {
          print('Actualizando cotización existente: ${cotizacion.serFol}');
        } else {
          print('Añadiendo nueva cotización: ${cotizacion.serFol}');
        }
        cotizacionesMap[cotizacion.id] = cotizacion;
        await localStorageRepository.saveCotizacion(cotizacion);
      }

      // Actualizar el estado con las cotizaciones nuevas y existentes
      state = cotizacionesMap;

      // Recargar cotizaciones locales para asegurarse de que están actualizadas
      await loadCotizacion();
    } catch (e) {
      print('Error al sincronizar cotizaciones: $e');
    }
  }
}

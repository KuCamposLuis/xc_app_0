import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/features/cotizaciones/presentation/providers/online/providers.dart';

import '../../../domain/domain.dart';
import '../../../domain/repositories/old_local_storage_repository.dart';

final localCotizacionInfoProvider =
    StateNotifierProvider<StorageCotizacionNotifier, Map<int, Cotizacion>>(
        (ref) {
  final localStorageRepository = ref.watch(localStorageRepositoryProvider);
  return StorageCotizacionNotifier(
      localStorageRepository: localStorageRepository);
});

class StorageCotizacionNotifier extends StateNotifier<Map<int, Cotizacion>> {
  final LocalStorageRepository localStorageRepository;

  StorageCotizacionNotifier({
    required this.localStorageRepository,
  }) : super({});

  Future<void> loadCotizacion(int cotizacionId) async {
    if (state[cotizacionId] != null) return;
    print('loading cotizacion');
    final cotizacion =
        await localStorageRepository.getCotizacionesLocalById(cotizacionId);
    final cotizaciones = [cotizacion];
    state = {...state, cotizacionId: cotizaciones.first};
  }
}

    // Future<void> saveCotizacion(Cotizacion cotizacion) async {
    //   try {
    //     await localStorageRepository.saveCotizacion(cotizacion);
    //     state = {...state, cotizacion.id: cotizacion};
    //   } catch (e) {
    //     print('Error al guardar cotización local: $e');
    //   }
    // }

    // Future<void> syncCotizaciones() async {
    //   try {
    //     final cotizacionesFromApi = await cotizacionesRepository.getCotizacion();

    //     // Mapa temporal para las cotizaciones nuevas y actualizadas
    //     final cotizacionesMap = Map<int, Cotizacion>.from(state);

    //     for (final cotizacion in cotizacionesFromApi) {
    //       if (cotizacionesMap.containsKey(cotizacion.id)) {
    //         print('Actualizando cotización existente: ${cotizacion.serFol}');
    //       } else {
    //         print('Añadiendo nueva cotización: ${cotizacion.serFol}');
    //       }
    //       cotizacionesMap[cotizacion.id] = cotizacion;
    //       await localStorageRepository.saveCotizacion(cotizacion);
    //     }

    //     // Actualizar el estado con las cotizaciones nuevas y existentes
    //     state = cotizacionesMap;

    //     // Recargar cotizaciones locales para asegurarse de que están actualizadas
    //   } catch (e) {
    //     print('Error al sincronizar cotizaciones: $e');
    //   }
    // }


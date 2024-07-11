import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/features/cotizaciones/domain/entities/cotizacion.dart';
import 'package:xc_app_0/features/cotizaciones/presentation/providers/cotizaciones_repository_provider.dart';

final cotizacionesProvider =
    StateNotifierProvider<CotizacionesNotifier, List<Cotizacion>>((ref) {
  final fetchMoreCotizaciones =
      ref.watch(cotizacionesRepositoryProvider).getCotizacionByPage;
  return CotizacionesNotifier(fetchMoreCotizaciones: fetchMoreCotizaciones);
});

typedef CotizacionCallback = Future<List<Cotizacion>> Function({int page});

class CotizacionesNotifier extends StateNotifier<List<Cotizacion>> {
  int currentPage = 0;
  bool isLoading = false;
  CotizacionCallback fetchMoreCotizaciones;

  CotizacionesNotifier({required this.fetchMoreCotizaciones}) : super([]);

  Future<void> loadNextPage() async {
    if (isLoading) return;
    isLoading = true;
    print('loading more cotizaciones');
    currentPage++;
    final List<Cotizacion> cotizaciones =
        await fetchMoreCotizaciones(page: currentPage);
    state = [...state, ...cotizaciones];
  }
}

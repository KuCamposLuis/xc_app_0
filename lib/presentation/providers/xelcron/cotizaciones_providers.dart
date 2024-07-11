import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/domain/entitis/cotizacion/cotizacion.dart';
import 'package:xc_app_0/presentation/providers/xelcron/xelcron_repository_provider.dart';

final cotizacionesProvider =
    StateNotifierProvider<CotizacionesNotifier, List<Cotizacion>>((ref) {
  final fetchMoreCotizaciones =
      ref.watch(xelcronRepositoryProvider).getCotizaciones;
  return CotizacionesNotifier(fetchMoreCotizaciones: fetchMoreCotizaciones);
});

typedef CotizacionCallback = Future<List<Cotizacion>> Function({int page});

class CotizacionesNotifier extends StateNotifier<List<Cotizacion>> {
  int currentPage = 0;
  CotizacionCallback fetchMoreCotizaciones;

  CotizacionesNotifier({required this.fetchMoreCotizaciones}) : super([]);

  Future<void> loadNextPage() async {
    currentPage++;
    final List<Cotizacion> cotizaciones =
        await fetchMoreCotizaciones(page: currentPage);
    state = [...state, ...cotizaciones];
  }
}

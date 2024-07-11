import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/features/catalogo/domain/entities/entities.dart';
import 'package:xc_app_0/features/cotizaciones/domain/entities/cotizacion.dart';
import 'package:xc_app_0/features/cotizaciones/presentation/providers/cotizaciones_repository_provider.dart';

import '../../../catalogo/presentation/providers/seriedocumento_provider.dart';

final cotizacionesProvider =
    StateNotifierProvider<CotizacionesNotifier, List<Cotizacion>>((ref) {
  final fetchMoreCotizaciones =
      ref.watch(cotizacionesRepositoryProvider).getCotizacionByPage;
  return CotizacionesNotifier(
    fetchMoreCotizaciones: fetchMoreCotizaciones,
    serieDocumentos: ref.watch(seriedocumentoProvider),
  );
});

typedef CotizacionCallback = Future<List<Cotizacion>> Function({int page});

class CotizacionesNotifier extends StateNotifier<List<Cotizacion>> {
  int currentPage = 0;
  bool isLoading = false;
  CotizacionCallback fetchMoreCotizaciones;
  List<SerieDocumentos> serieDocumentos;

  CotizacionesNotifier(
      {required this.fetchMoreCotizaciones, required this.serieDocumentos})
      : super([]);

  Future<void> loadNextPage() async {
    if (isLoading) return;
    isLoading = true;
    print('loading more cotizaciones');
    currentPage++;
    final List<Cotizacion> cotizaciones =
        await fetchMoreCotizaciones(page: currentPage);
    final List<Cotizacion> newCotizaciones = combinacionListas(
        cotizaciones: cotizaciones, serieDocumentos: serieDocumentos);
    state = [...newCotizaciones];
  }

  List<Cotizacion> combinacionListas(
      {required List<Cotizacion> cotizaciones,
      required List<SerieDocumentos> serieDocumentos}) {
    List<Cotizacion> nuevasCotizaciones = [];

    for (var cotizacion in cotizaciones) {
      SerieDocumentos serieDocumento = serieDocumentos.firstWhere(
          (serieDocumento) =>
              serieDocumento.id.toString() == cotizacion.serDoc);

      cotizacion.serDoc = serieDocumento.name;

      // cotizacion.serDoc = serieDocumento.docModName;

      nuevasCotizaciones.add(cotizacion);
    }

    return nuevasCotizaciones;
  }
}

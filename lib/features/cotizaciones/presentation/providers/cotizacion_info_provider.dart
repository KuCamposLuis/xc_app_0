import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/features/catalogo/domain/entities/serie_documentos.dart';
import 'package:xc_app_0/features/catalogo/presentation/providers/seriedocumento_provider.dart';
import 'package:xc_app_0/features/cotizaciones/cotizaciones.dart';
import 'package:xc_app_0/features/cotizaciones/domain/entities/cotizacion.dart';

final cotizaInfoProvider =
    StateNotifierProvider<CotizacionMapNotifier, Map<String, Cotizacion>>(
        (ref) {
  final fetchCotizacionInfo = ref.watch(cotizacionesRepositoryProvider);

  return CotizacionMapNotifier(
      getCotizacion: fetchCotizacionInfo.getCotizacionById,
      serieDocumentos: ref.watch(seriedocumentoProvider));
});

typedef GetCotizacionCallBack = Future<Cotizacion> Function(
    String cotizacionId);

class CotizacionMapNotifier extends StateNotifier<Map<String, Cotizacion>> {
  final GetCotizacionCallBack getCotizacion;
  List<SerieDocumentos> serieDocumentos;

  CotizacionMapNotifier(
      {required this.getCotizacion, required this.serieDocumentos})
      : super({});

  Future<void> loadcotizacion(String cotizacionId) async {
    if (state[cotizacionId] != null) return;
    print('loading cotizacion');
    final cotizacion = await getCotizacion(cotizacionId);
    final cotizaciones = [cotizacion];
    final nuevasCotizaciones = combinacionListas(
        cotizaciones: cotizaciones, serieDocumentos: serieDocumentos);
    state = {...state, cotizacionId: nuevasCotizaciones.first};
  }

  List<Cotizacion> combinacionListas(
      {required List<Cotizacion> cotizaciones, //?
      required List<SerieDocumentos> serieDocumentos}) {
    List<Cotizacion> nuevasCotizaciones = [];

    for (var cotizacion in cotizaciones) {
      SerieDocumentos serieDocumento = serieDocumentos.firstWhere(
          (serieDocumento) =>
              serieDocumento.id.toString() == cotizacion.serDoc);

      cotizacion.serDoc = serieDocumento.name;

      nuevasCotizaciones.add(cotizacion);
    }

    return nuevasCotizaciones;
  }
}

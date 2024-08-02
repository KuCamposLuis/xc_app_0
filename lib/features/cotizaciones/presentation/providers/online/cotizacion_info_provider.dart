import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/features/catalogo/domain/entities/serie_documentos.dart';
import 'package:xc_app_0/features/catalogo/presentation/providers/entidades_provider.dart';
import 'package:xc_app_0/features/catalogo/presentation/providers/seriedocumento_provider.dart';
import 'package:xc_app_0/features/cotizaciones/cotizaciones.dart';
import 'package:xc_app_0/features/cotizaciones/domain/entities/cotizacion.dart';

import '../../../../catalogo/domain/entities/entities.dart';

final cotizaInfoProvider =
    StateNotifierProvider<CotizacionMapNotifier, Map<String, Cotizacion>>(
        (ref) {
  final fetchCotizacionInfo = ref.watch(cotizacionesRepositoryProvider);

  return CotizacionMapNotifier(
      getCotizacion: fetchCotizacionInfo.getCotizacionById,
      serieDocumentos: ref.watch(
        seriedocumentoProvider,
      ),
      entidades: ref.watch(entidadesProvider));
});

typedef GetCotizacionCallBack = Future<Cotizacion> Function(
    String cotizacionId);

class CotizacionMapNotifier extends StateNotifier<Map<String, Cotizacion>> {
  final GetCotizacionCallBack getCotizacion;
  List<SerieDocumentos> serieDocumentos;
  List<Entidades> entidades;

  CotizacionMapNotifier(
      {required this.getCotizacion,
      required this.serieDocumentos,
      required this.entidades})
      : super({});

  Future<void> loadcotizacion(String cotizacionId) async {
    if (state[cotizacionId] != null) return;
    print('loading cotizacion');
    final cotizacion = await getCotizacion(cotizacionId);
    final cotizaciones = [cotizacion];
    final nuevasCotizaciones = combinacionListas2(
        cotizaciones: cotizaciones,
        serieDocumentos: serieDocumentos,
        entidades: entidades);
    // combinacionListas(
    //     cotizaciones: cotizaciones, serieDocumentos: serieDocumentos);
    state = {...state, cotizacionId: nuevasCotizaciones.first};
  }

  List<Cotizacion> combinacionListas2({
    required List<Cotizacion> cotizaciones,
    required List<SerieDocumentos> serieDocumentos,
    required List<Entidades> entidades,
  }) {
    final serieDocumentoMap = {
      for (var serie in serieDocumentos) serie.id.toString(): serie.name,
    };

    final entidadesMap = {
      for (var entidad in entidades) entidad.id.toString(): entidad.name,
    };

    return cotizaciones.map((cotizacion) {
      final nameserdoc =
          serieDocumentoMap[cotizacion.serDoc] ?? cotizacion.serDoc;
      final estadoDescripcion = estadoToString(cotizacion.est);
      final nameEntidad = entidadesMap[cotizacion.cltEnt] ?? cotizacion.cltEnt;

      return Cotizacion(
          id: cotizacion.id,
          fch: cotizacion.fch,
          serFol: cotizacion.serFol,
          serDoc: nameserdoc,
          cltEnt: nameEntidad,
          est: estadoDescripcion);
    }).toList();
  }
}

String estadoToString(String est) {
  switch (est) {
    case "1":
      return 'Pendiente';
    case "2":
      return 'Parcialmente Surtido';
    case "3":
      return 'Surtido';
    case "4":
      return 'Cancelado';
    default:
      return 'Desconocido';
  }
}

  // List<Cotizacion> combinacionListas(
  //     {required List<Cotizacion> cotizaciones, //?
  //     required List<SerieDocumentos> serieDocumentos}) {
  //   List<Cotizacion> nuevasCotizaciones = [];

  //   for (var cotizacion in cotizaciones) {
  //     SerieDocumentos serieDocumento = serieDocumentos.firstWhere(
  //         (serieDocumento) =>
  //             serieDocumento.id.toString() == cotizacion.serDoc);

  //     cotizacion.serDoc = serieDocumento.name;

  //     nuevasCotizaciones.add(cotizacion);
  //   }

  //   return nuevasCotizaciones;
  // }
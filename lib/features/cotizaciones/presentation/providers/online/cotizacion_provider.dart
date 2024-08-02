import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/features/catalogo/domain/entities/entities.dart';
import 'package:xc_app_0/features/cotizaciones/domain/entities/cotizacion.dart';
import 'package:xc_app_0/features/cotizaciones/presentation/providers/online/cotizaciones_repository_provider.dart';

import '../../../../catalogo/presentation/providers/entidades_provider.dart';
import '../../../../catalogo/presentation/providers/seriedocumento_provider.dart';

final cotizacionesProvider =
    StateNotifierProvider<CotizacionesNotifier, List<Cotizacion>>((ref) {
  final fetchMoreCotizaciones =
      ref.watch(cotizacionesRepositoryProvider).getCotizacion;
  return CotizacionesNotifier(
    fetchMoreCotizaciones: fetchMoreCotizaciones,
    serieDocumentos: ref.watch(seriedocumentoProvider),
    entidades: ref.watch(entidadesProvider),
  );
});

typedef CotizacionCallback = Future<List<Cotizacion>> Function({int page});

class CotizacionesNotifier extends StateNotifier<List<Cotizacion>> {
  int currentPage = 0;
  bool isLoading = false;
  CotizacionCallback fetchMoreCotizaciones;
  List<SerieDocumentos> serieDocumentos;
  List<Entidades> entidades;

  CotizacionesNotifier({
    required this.fetchMoreCotizaciones,
    required this.serieDocumentos,
    required this.entidades,
  }) : super([]);

  Future<void> loadNextPage() async {
    if (isLoading) return;
    isLoading = true;
    print('loading more cotizaciones');
    currentPage++;
    await _fetchCotizaciones();
  }

  Future<void> refreshCotizaciones() async {
    currentPage = 1;
    state = [];
    await _fetchCotizaciones();
  }

  Future<void> _fetchCotizaciones() async {
    try {
      final List<Cotizacion> cotizaciones =
          await fetchMoreCotizaciones(page: currentPage);
      final List<Cotizacion> newCotizaciones = combinacionListas2(
        cotizaciones: cotizaciones,
        serieDocumentos: serieDocumentos,
        entidades: entidades,
      );
      state = [...state, ...newCotizaciones];
    } catch (e) {
      print('Error fetching cotizaciones: $e');
    }
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

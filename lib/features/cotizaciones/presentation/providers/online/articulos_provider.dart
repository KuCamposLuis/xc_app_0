import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/features/catalogo/presentation/providers/articulos_provider.dart';
import 'package:xc_app_0/features/cotizaciones/cotizaciones.dart';
import 'package:xc_app_0/features/cotizaciones/domain/domain.dart';
import 'package:xc_app_0/features/cotizaciones/domain/entities/artserv.dart';

import '../../../../catalogo/domain/entities/entities.dart';

final articulosProvider =
    StateNotifierProvider<ArticulosMapNotifier, Map<String, List<Artserv>>>(
        (ref) {
  final fetchArticulos = ref.watch(cotizacionesRepositoryProvider);

  return ArticulosMapNotifier(
    getArticulos: fetchArticulos.getLineaPresupuestoById,
    articulosCat: ref.watch(articulosCatProvider),
  );
});

typedef GetArticulosCallBack = Future<List<Artserv>?> Function(
    String cotizacionId);

class ArticulosMapNotifier extends StateNotifier<Map<String, List<Artserv>>> {
  final GetArticulosCallBack getArticulos;
  List<ArticulosServicios> articulosCat;

  ArticulosMapNotifier({
    required this.getArticulos,
    required this.articulosCat,
  }) : super({});

  Future<void> loadArticulos(String cotizacionId) async {
    if (state.containsKey(cotizacionId)) return;
    await _fetchArticulos(cotizacionId);
  }

  Future<void> refreshArticulos(String cotizacionId) async {
    await _fetchArticulos(cotizacionId);
  }

  Future<void> _fetchArticulos(String cotizacionId) async {
    print('loading Articulos for $cotizacionId');

    try {
      final List<Artserv>? articulos = await getArticulos(cotizacionId);

      // Manejar caso cuando la lista de artículos es null
      if (articulos == null) {
        state = {...state, cotizacionId: []};
        return;
      }

      final List<Artserv> newArticulos = combinacionListas(
        articulosCot: articulos,
        articulosCat: articulosCat,
      );

      state = {...state, cotizacionId: newArticulos};
    } catch (e) {
      // Manejo de errores
      print('Error fetching articles: $e');
      state = {...state, cotizacionId: []};
    }
  }

  List<Artserv> combinacionListas({
    required List<Artserv> articulosCot,
    required List<ArticulosServicios> articulosCat,
  }) {
    // Crear un mapa para buscar el name por id de manera eficiente
    final articulosCatMap = {
      for (var serie in articulosCat) serie.id.toString(): serie.name
    };

    return articulosCot.map((articulos) {
      // Buscar el nombre del documento usando el mapa
      final name = articulosCatMap[articulos.art] ?? articulos.art;

      // Crear una nueva instancia de ArticulosServiciosCotizacion con art actualizado al name
      return Artserv(
          id: articulos.id,
          vtaPre: articulos.vtaPre,
          art: name,
          pre: articulos.pre.toDouble(),
          can: articulos.can.toDouble());
    }).toList();
  }
}


// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:xc_app_0/features/cotizaciones/cotizaciones.dart';
// import 'package:xc_app_0/features/cotizaciones/domain/domain.dart';

// final articulosProvider = StateNotifierProvider<ArticulosMapNotifier,
//     Map<String, List<ArticulosServiciosCotizacion>>>((ref) {
//   final fetchArticulos = ref.watch(cotizacionesRepositoryProvider);

//   return ArticulosMapNotifier(getArticulos: fetchArticulos.getLineaPresupuesto);
// });

// typedef GetArticulosCallBack = Future<List<ArticulosServiciosCotizacion>>
//     Function(String articulosId);

// class ArticulosMapNotifier
//     extends StateNotifier<Map<String, List<ArticulosServiciosCotizacion>>> {
//   final GetArticulosCallBack getArticulos;

//   ArticulosMapNotifier({
//     required this.getArticulos,
//   }) : super({});

//   Future<void> loadArticulos(String articulosId) async {
//     if (state.containsKey(articulosId)) return;
//     print('loading Articulos');
//     final List<ArticulosServiciosCotizacion> articulos =
//         await getArticulos(articulosId);

//     state = {...state, articulosId: articulos};
//   }
// }

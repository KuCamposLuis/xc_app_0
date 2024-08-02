// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:xc_app_0/features/catalogo/presentation/providers/articulos_provider.dart';
// import 'package:xc_app_0/features/cotizaciones/cotizaciones.dart';
// import 'package:xc_app_0/features/cotizaciones/domain/domain.dart';

// import '../../../catalogo/domain/entities/entities.dart';

// final articulosProvider = StateNotifierProvider<ArticulosMapNotifier,
//     List<ArticulosServiciosCotizacion>>((ref) {
//   final fetchArticulos = ref.watch(cotizacionesRepositoryProvider);

//   return ArticulosMapNotifier(
//     getArticulos: fetchArticulos.getLineaPresupuesto,
//     articulosCat: ref.watch(articulosCatProvider),
//   );
// });

// typedef GetArticulosCallBack = Future<List<ArticulosServiciosCotizacion>>
//     Function(String articulosId);

// class ArticulosMapNotifier
//     extends StateNotifier<List<ArticulosServiciosCotizacion>> {
//   final GetArticulosCallBack getArticulos;
//   List<ArticulosServicios> articulosCat;

//   ArticulosMapNotifier({
//     required this.getArticulos,
//     required this.articulosCat,
//   }) : super([]);

//   Future<void> loadArticulos(String articulosId) async {
//     if (state.any((articulo) => articulo.id == articulosId)) return;
//     print('loading Articulos');
//     final List<ArticulosServiciosCotizacion> articulos =
//         await getArticulos(articulosId);

//     final List<ArticulosServiciosCotizacion> newArticulos = combinacionListas(
//       articulosCot: articulos,
//       articulosCat: articulosCat,
//     );

//     state = [...newArticulos];
//   }

//   List<ArticulosServiciosCotizacion> combinacionListas({
//     required List<ArticulosServiciosCotizacion> articulosCot,
//     required List<ArticulosServicios> articulosCat,
//   }) {
//     // Crear un mapa para buscar el name por id de manera eficiente
//     final articulosCatMap = {
//       for (var serie in articulosCat) serie.id.toString(): serie.name,
//     };

//     return articulosCot.map((articulos) {
//       // Buscar el nombre del documento usando el mapa
//       final name = articulosCatMap[articulos.art] ?? articulos.art;

//       // Crear una nueva instancia de Cotizacion con serDoc actualizado al name
//       return ArticulosServiciosCotizacion(
//         id: articulos.id,
//         vtaPre: articulos.vtaPre,
//         art: name,
//       );
//     }).toList();
//   }
// }











//! La otra version de este archivo es la siguiente:

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

import 'package:dio/dio.dart';
import 'package:xc_app_0/features/cotizaciones/domain/domain.dart';
import 'package:xc_app_0/features/cotizaciones/domain/entities/artserv.dart';
import 'package:xc_app_0/features/cotizaciones/infrastructure/mappers/articulos_mapper.dart';
import 'package:xc_app_0/features/cotizaciones/infrastructure/models/models.dart';
import '../../../../config/constants/enviroment.dart';
import '../mappers/cotizacion_mapper.dart';
import '../models/lin_articulos_servicios_xelcron.dart';

class CotizacionDatasourceImpl extends CotizacionesDatasource {
  final empdiv = "001 0001 0001";

  final dio = Dio(BaseOptions(
      baseUrl: "https://demo-api.xelcron.com/XelCronERP_dat_dat/v2",
      queryParameters: {"api_key": Enviroment.apiXelcronKey}));

  @override
  Future<List<Cotizacion>> getCotizacion() async {
    final response = await dio.get(
      "/vta_pre_gv?filterQuery%5Bemp_div%5D=001%20001%20001",
    );
    final cotizacionDBResponse = CotizacionResponse.fromJson(response.data);
    final List<Cotizacion> cotizaciones = cotizacionDBResponse.vtaPreGv
        .map((cotizaciondb) =>
            CotizacionMapper.cotizacionDBToEntity(cotizaciondb))
        .toList();
    return cotizaciones;
  }

  @override
  Future<Cotizacion> getCotizacionById(String id) async {
    final response = await dio.get("/vta_pre_gv/$id");
    if (response.statusCode != 200)
      throw Exception("Cotizacion: $id no encontrada");

    final cotizacionDetalles = CotizacionResponse.fromJson(response.data);
    final List<Cotizacion> cotizacionid = cotizacionDetalles.vtaPreGv.map(
      (cotizaciondb) {
        return CotizacionMapper.cotizacionDBToEntity(cotizaciondb);
      },
    ).toList();

    return cotizacionid.first;
  }

  @override
  Future<List<Artserv>> getLineaPresupuestoById(String id) async {
    final response = await dio.get("/vta_pre_lin_gv/$id");
    if (response.statusCode != 200)
      throw Exception("Cotizacion: $id no encontrada");

    final articulos = LpArticulosServ.fromJson(response.data);
    final List<Artserv> articulosid = articulos.vtaPreLinGv.map(
      (articulosdb) {
        return ArticulosMapper.articulosDBToEntity(articulosdb);
      },
    ).toList();

    return articulosid;
  }

  @override
  Future<Artserv> getArticulosServiciosCotizacion(String id) async {
    final response = await dio.get("/art_ma/$id");
    if (response.statusCode != 200)
      throw Exception("Articulo Id: $id no encontrada");

    final articulosResponse = LpArticulosServ.fromJson(response.data);
    final List<Artserv> articulosid =
        articulosResponse.vtaPreLinGv.map((articulosdbid) {
      return ArticulosMapper.articulosDBToEntity(articulosdbid);
    }).toList();

    return articulosid.first;
  }

  @override
  Future<List<Artserv>> getLineaPresupuesto() async {
    final response = await dio.get("/vta_pre_lin_gv");
    final articulosResponse = LpArticulosServ.fromJson(response.data);
    final List<Artserv> lineaPresupuesto =
        articulosResponse.vtaPreLinGv.map((articulosdb) {
      return ArticulosMapper.articulosDBToEntity(articulosdb);
    }).toList();
    return lineaPresupuesto;
  }
}

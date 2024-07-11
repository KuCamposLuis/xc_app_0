import 'package:dio/dio.dart';
import 'package:xc_app_0/features/cotizaciones/domain/domain.dart';
import 'package:xc_app_0/features/cotizaciones/infrastructure/models/models.dart';
import '../../../../config/constants/enviroment.dart';
import '../mappers/cotizacion_mapper.dart';

class CotizacionDatasourceImpl extends CotizacionesDatasource {
  final dio = Dio(BaseOptions(
      baseUrl: "https://demo-api.xelcron.com/XelCronERP_dat_dat/v2",
      queryParameters: {"api_key": Enviroment.apiXelcronKey}));

  @override
  Future<Cotizacion> createUpdateProduct(Map<String, dynamic> cotizacionlike) {
    // TODO: implement createUpdateProduct
    throw UnimplementedError();
  }

  @override
  Future<List<Cotizacion>> getCotizacion() async {
    final response = await dio.get("/vta_pre_gv");
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
}

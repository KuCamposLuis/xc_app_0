import 'package:dio/dio.dart';
import 'package:xc_app_0/features/cotizaciones/domain/domain.dart';

import '../../../../config/constants/enviroment.dart';
import '../mappers/cotizacion_mapper.dart';
import '../models/Cotizaciones/cotizacion_response.dart';

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
        .map((pedidodb) => PedidoMapper.pedidoDBToEntity(cotizaciondb))
        .toList();
    return cotizaciones;
  }

  @override
  Future<Cotizacion> getCotizacionById(String id) {
    // TODO: implement getCotizacionById
    throw UnimplementedError();
  }
}

import 'package:xc_app_0/features/cotizaciones/domain/domain.dart';

class CotizacionRepositoryImpl extends CotizacionesRepository {
  final CotizacionesDatasource datasource;

  CotizacionRepositoryImpl(this.datasource);

  @override
  Future<Cotizacion> createUpdateProduct(Map<String, dynamic> cotizacionlike) {
    return datasource.createUpdateProduct(cotizacionlike);
  }

  @override
  Future<List<Cotizacion>> getCotizacionByPage({int page = 1}) async {
    return datasource.getCotizacion();
  }

  @override
  Future<Cotizacion> getCotizacionById(String id) {
    return datasource.getCotizacionById(id);
  }
}

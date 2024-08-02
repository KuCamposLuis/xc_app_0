import 'package:xc_app_0/features/cotizaciones/domain/domain.dart';
import 'package:xc_app_0/features/cotizaciones/domain/entities/artserv.dart';

class CotizacionRepositoryImpl extends CotizacionesRepository {
  final CotizacionesDatasource datasource;

  CotizacionRepositoryImpl(this.datasource);
  @override
  Future<List<Cotizacion>> getCotizacion({int page = 1}) async {
    return datasource.getCotizacion();
  }

  @override
  Future<Cotizacion> getCotizacionById(String id) {
    return datasource.getCotizacionById(id);
  }

  @override
  Future<List<Artserv>> getLineaPresupuestoById(String id) {
    return datasource.getLineaPresupuestoById(id);
  }

  @override
  Future<Artserv> getArticulosServiciosCotizacion(String id) {
    return datasource.getArticulosServiciosCotizacion(id);
  }

  @override
  Future<List<Artserv>> getLineaPresupuesto() {
    return datasource.getLineaPresupuesto();
  }
}

import 'package:xc_app_0/features/cotizaciones/domain/entities/artserv.dart';

import '../domain.dart';

abstract class CotizacionesDatasource {
  Future<List<Cotizacion>> getCotizacion();
  Future<Cotizacion> getCotizacionById(String id);
  // Future<Cotizacion> createCotizacion(int serDoc, int cliente);

  //GetArticulos
  Future<List<Artserv>> getLineaPresupuesto();
  Future<List<Artserv>> getLineaPresupuestoById(String id);
  Future<Artserv> getArticulosServiciosCotizacion(String id);
}

import '../entities/cotizacion.dart';

abstract class CotizacionesRepository {
  Future<List<Cotizacion>> getCotizacionByPage();
  Future<Cotizacion> getCotizacionById(String id);
  Future<Cotizacion> createUpdateProduct(Map<String, dynamic> cotizacionlike);
}

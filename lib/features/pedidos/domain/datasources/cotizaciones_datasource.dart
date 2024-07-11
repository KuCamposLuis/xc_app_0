import '../entities/pedidos.dart';

abstract class CotizacionesDatasource {
  Future<List<Cotizacion>> getCotizacion();
  Future<Cotizacion> getCotizacionById(String id);
  Future<Cotizacion> createUpdateProduct(Map<String, dynamic> cotizacionlike);
}

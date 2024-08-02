import 'package:xc_app_0/features/cotizaciones/domain/entities/artserv.dart';

import '../domain.dart';

abstract class LocalStorageRepository {
  Future<bool> isCotizacionSave(int id);
  Future<List<Cotizacion>> getCotizacionesLocal();
  Future<void> saveCotizacion(Cotizacion cotizacion);
  Future<Cotizacion> getCotizacionesLocalById(int idlocal);

  Future<bool> isLineaCotizacionSave(int id);
  Future<List<Artserv>> getLineaCotizacionesLocal();
  Future<void> saveLineaCotizacion(Artserv artserv);
  Future<List<Artserv>> getLineaCotizacionesLocalById(int idlinea);
}

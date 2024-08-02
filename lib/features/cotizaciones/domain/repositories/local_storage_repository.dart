import 'package:xc_app_0/features/cotizaciones/domain/entities/cotizacionl.dart';

abstract class LocalStorageRepository {
  Future<void> saveCotizacion(Cotizacionl cotizacion);
  Future<bool> isCotizacionSave(int id);

  Future<List<Cotizacionl>> getCotizacionesLocal();
}

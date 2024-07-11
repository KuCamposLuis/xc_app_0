import 'package:xc_app_0/domain/entitis/cotizacion/cotizacion.dart';
import 'package:xc_app_0/infrastructure/models/xelcrondb/Cotizaciones/cotizacion_cotizaciondb.dart';

class CotizacionMapper {
  static Cotizacion cotizacionDBToEntity(VtaPreGvFromXelcron cotizaciondb) =>
      Cotizacion(
          id: cotizaciondb.id,
          serFol: cotizaciondb.ser_Fol,
          serDoc: cotizaciondb.ser_Doc,
          altUsr: cotizaciondb.alt_Usr);
}

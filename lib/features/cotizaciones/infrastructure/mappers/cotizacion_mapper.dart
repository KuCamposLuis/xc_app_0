import 'package:xc_app_0/features/cotizaciones/domain/domain.dart';
import 'package:xc_app_0/features/cotizaciones/infrastructure/models/cotizacion_detalles.dart';

import '../models/cotizacion_cotizaciondb.dart';

class CotizacionMapper {
  static Cotizacion cotizacionDBToEntity(VtaPreGv cotizaciondb) => Cotizacion(
        id: cotizaciondb.id,
        serFol: cotizaciondb.ser_Fol,
        serDoc: cotizaciondb.ser_Doc.toString(),
      );

  static Cotizacion cotizacionDetallesDBToEntity(
          CotizacionDetalles cotizaciondb) =>
      Cotizacion(
          id: cotizaciondb.id,
          serFol: cotizaciondb.serFol,
          serDoc: cotizaciondb.serDoc.toString());
}

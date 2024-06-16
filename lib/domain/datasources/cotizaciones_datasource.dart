import 'package:xc_app_0/domain/entitis/cotizacion.dart';

abstract class CotizacionesDatasource{
  Future <List<Cotizacion>> getCotizaciones({int page = 1});
}
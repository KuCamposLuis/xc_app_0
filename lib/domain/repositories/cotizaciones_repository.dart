import 'package:xc_app_0/domain/entitis/cotizacion.dart';

abstract class CotizacionesRepository{
  Future <List<Cotizacion>> getCotizaciones({int page = 1});
}
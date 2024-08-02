import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/features/cotizaciones/infrastructure/infrastructure.dart';

final cotizacionesRepositoryProvider = Provider((ref) {
  return CotizacionRepositoryImpl(CotizacionDatasourceImpl());
});

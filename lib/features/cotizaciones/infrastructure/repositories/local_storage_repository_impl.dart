import 'package:xc_app_0/features/cotizaciones/domain/entities/cotizacionl.dart';
import 'package:xc_app_0/features/cotizaciones/domain/repositories/local_storage_repository.dart';

import '../../domain/datasources/local_storage_datasource.dart';

class LocalStorageRepositoryImpl extends LocalStorageRepository {
  final LocalStorageDatasource datasource;

  LocalStorageRepositoryImpl(this.datasource);

  @override
  Future<List<Cotizacionl>> getCotizacionesLocal() {
    return datasource.getCotizacionesLocal();
  }

  @override
  Future<bool> isCotizacionSave(int id) {
    return datasource.isCotizacionSave(id);
  }

  @override
  Future<void> saveCotizacion(Cotizacionl cotizacion) {
    return datasource.saveCotizacion(cotizacion);
  }
}

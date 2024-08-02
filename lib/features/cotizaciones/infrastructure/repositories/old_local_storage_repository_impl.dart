import 'package:xc_app_0/features/cotizaciones/domain/entities/artserv.dart';
import 'package:xc_app_0/features/cotizaciones/domain/entities/cotizacion.dart';
import 'package:xc_app_0/features/cotizaciones/domain/repositories/old_local_storage_repository.dart';

import '../../domain/datasources/old_local_storage_datasource.dart';

class LocalStorageRepositoryImpl extends LocalStorageRepository {
  final LocalStorageDatasource datasource;

  LocalStorageRepositoryImpl(this.datasource);

  @override
  Future<List<Cotizacion>> getCotizacionesLocal() {
    return datasource.getCotizacionesLocal();
  }

  @override
  Future<bool> isCotizacionSave(int id) {
    return datasource.isCotizacionSave(id);
  }

  @override
  Future<void> saveCotizacion(Cotizacion cotizacion) {
    return datasource.saveCotizacion(cotizacion);
  }

  @override
  Future<Cotizacion> getCotizacionesLocalById(int idlocal) {
    return datasource.getCotizacionesLocalById(idlocal);
  }

  @override
  Future<List<Artserv>> getLineaCotizacionesLocal() {
    return datasource.getLineaCotizacionesLocal();
  }

  @override
  Future<List<Artserv>> getLineaCotizacionesLocalById(int idlinea) {
    return datasource.getLineaCotizacionesLocalById(idlinea);
  }

  @override
  Future<bool> isLineaCotizacionSave(int id) {
    return datasource.isLineaCotizacionSave(id);
  }

  @override
  Future<void> saveLineaCotizacion(Artserv artserv) {
    return datasource.saveLineaCotizacion(artserv);
  }
}

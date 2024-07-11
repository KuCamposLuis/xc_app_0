import 'package:xc_app_0/features/catalogo/domain/datasources/catalogo_datasource.dart';
import 'package:xc_app_0/features/catalogo/domain/repositories/catalogo_repository.dart';

import '../../domain/entities/entities.dart';

class CatalogoRepositoryImpl extends CatalogoRepository {
  final CatalogoDatasource datasource;

  CatalogoRepositoryImpl(this.datasource);

  @override
  Future<AllUser> getAllUser() {
    return datasource.getAllUser();
  }

  @override
  Future<ArticulosServicios> getArticulos() {
    return datasource.getArticulos();
  }

  @override
  Future<List<Entidades>> getEntidades() {
    return datasource.getEntidades();
  }

  @override
  Future<List<SerieDocumentos>> getSerieDocumento({int page = 1}) async {
    return datasource.getSerieDocumento();
  }

  @override
  Future<Unidades> getUnidades() {
    return datasource.getUnidades();
  }

  @override
  Future<SerieDocumentos?> getSerieDocumentoById(int id) async {
    // TODO: implement getSerieDocumentoById
    throw UnimplementedError();
  }

  @override
  Future<AllUser?> getUserById(int id) {
    // TODO: implement getUserById
    throw UnimplementedError();
  }
}

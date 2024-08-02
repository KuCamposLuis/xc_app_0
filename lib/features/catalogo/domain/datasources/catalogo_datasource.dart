import '../entities/entities.dart';

abstract class CatalogoDatasource {
  Future<List<SerieDocumentos>> getSerieDocumento();
  Future<SerieDocumentos?> getSerieDocumentoById(int id); // Nuevo método
  Future<List<Entidades>> getEntidades();

  Future<AllUser> getAllUser();
  Future<List<ArticulosServicios>> getArticulos();
  Future<ArticulosServicios> getArticulosById(String id);
  Future<Unidades> getUnidades();
}

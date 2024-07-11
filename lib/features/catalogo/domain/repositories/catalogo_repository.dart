import '../entities/entities.dart';

abstract class CatalogoRepository {
  Future<List<SerieDocumentos>> getSerieDocumento();
  Future<SerieDocumentos?> getSerieDocumentoById(int id); // Nuevo método
  Future<List<Entidades>> getEntidades();

  Future<AllUser> getAllUser();
  Future<AllUser?> getUserById(int id); // Nuevo método
  Future<ArticulosServicios> getArticulos();
  Future<Unidades> getUnidades();
}

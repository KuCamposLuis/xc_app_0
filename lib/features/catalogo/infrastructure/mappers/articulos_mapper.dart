import 'package:xc_app_0/features/catalogo/domain/entities/entities.dart';
import 'package:xc_app_0/features/catalogo/infrastructure/models/articulos_servicios/articulos_xelcron.dart';

class ArticulosMapper {
  static ArticulosServicios articulosDBToEntity(ArtMa articulosdb) =>
      ArticulosServicios(
        id: articulosdb.id,
        name: articulosdb.name,
        dsc: articulosdb.dsc,
        uniMed: articulosdb.uniMed,
        altUsr: articulosdb.altUsr,
      );
}

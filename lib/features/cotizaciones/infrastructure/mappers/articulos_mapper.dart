import 'package:xc_app_0/features/cotizaciones/domain/entities/artserv.dart';

import '../models/lin_articulos_servicios.dart';

class ArticulosMapper {
  static Artserv articulosDBToEntity(VtaPreLinGv articulosdb) => Artserv(
      id: articulosdb.id,
      vtaPre: articulosdb.vtaPre,
      art: articulosdb.art.toString(),
      pre: articulosdb.pre,
      can: articulosdb.can);
}

import 'package:xc_app_0/domain/entitis/catalogo/serie_de_documento.dart';
import 'package:xc_app_0/infrastructure/models/xelcrondb/catalogos/serie_documentos/seriedoc_from_xelcron.dart';

class SerdocMapper {
  static SerieDeDocumento serieDocDBToEntity(SerDocFromXelcron serdocdb) =>
      SerieDeDocumento(
          id: serdocdb.id,
          name: serdocdb.name,
          docmodname: serdocdb.doc_mod_name,
          altusr: serdocdb.alt_usr,
          modusr: serdocdb.mod_usr);
}

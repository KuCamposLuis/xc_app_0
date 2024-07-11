import 'package:xc_app_0/features/catalogo/domain/entities/entities.dart';
import 'package:xc_app_0/features/catalogo/infrastructure/models/serie_documentos/seriedoc_xelcron.dart';

class SeriedocumentoMapper {
  static SerieDocumentos serieDocumentoDBToEntity(SerDocCfg serdoc) =>
      SerieDocumentos(
          id: serdoc.id, name: serdoc.name, docModName: serdoc.doc_mod_name);
}

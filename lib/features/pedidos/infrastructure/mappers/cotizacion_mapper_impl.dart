// cotizacion_mapper_impl.dart

import 'package:xc_app_0/features/catalogo/domain/entities/serie_documentos.dart';

import '../../../catalogo/infrastructure/infrastructure.dart';

class CotizacionMapperImpl {
  final CatalogoDatasourceImpl catalogoDatasource;

  CotizacionMapperImpl(this.catalogoDatasource);

  Future<Map<int, String>> getSerieDocumentosMap() async {
    final List<SerieDocumentos> serieDocumentos =
        await catalogoDatasource.getSerieDocumento();
    return {for (var serDoc in serieDocumentos) serDoc.id: serDoc.name};
  }

  String getSerDocName(int serDocId, Map<int, String> serieDocumentosMap) {
    return serieDocumentosMap[serDocId] ?? '';
  }
}

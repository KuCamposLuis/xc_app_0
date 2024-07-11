import 'package:xc_app_0/domain/datasources/xelcron_datasource.dart';
import 'package:xc_app_0/domain/entitis/catalogo/serie_de_documento.dart';
import 'package:xc_app_0/domain/entitis/cotizacion/cotizacion.dart';
import 'package:xc_app_0/domain/repositories/xelcron_repository.dart';

class XelcronRepositoryImplement extends XelcronRepository {
  final XelcronDatasource datasource;

  XelcronRepositoryImplement(this.datasource);

  @override
  Future<List<Cotizacion>> getCotizaciones({int page = 1}) {
    return datasource.getCotizaciones(page: page);
  }

  @override
  Future<List<SerieDeDocumento>> getSeriesDeDocumento({int page = 1}) {
    return datasource.getSeriesDeDocumento(page: page);
  }
}

import 'package:dio/dio.dart';
import 'package:xc_app_0/features/catalogo/domain/datasources/catalogo_datasource.dart';
import 'package:xc_app_0/features/catalogo/infrastructure/mappers/seriedocumento_mapper.dart';
import 'package:xc_app_0/features/catalogo/infrastructure/models/serie_documentos/seriedoc_response_xelcron.dart';

import '../../../../config/constants/enviroment.dart';
import '../../domain/entities/entities.dart';
import '../mappers/entidades_mapper.dart';
import '../models/entidades/entidades_response_xelcron.dart';

class CatalogoDatasourceImpl extends CatalogoDatasource {
  final dio = Dio(BaseOptions(
      baseUrl: "https://demo-api.xelcron.com/XelCronERP_dat_dat/v2",
      queryParameters: {
        // "filterQuery[ALT_USR]": "103",
        "api_key": Enviroment.apiXelcronKey,
      }));

  @override
  Future<AllUser> getAllUser() {
    // final response = dio.get("/usr_vb");
    // final allUserResponse = allu
    throw UnimplementedError();
  }

  @override
  Future<ArticulosServicios> getArticulos() async {
    // final response = await dio.get("/art_ma");
    // final articulosResponse = ArticulosServiciosResponse.fromJson(response.data);
    // final List<SerieDocumentos> articulosServicios = articulosResponse.serDocCfg
    //     .map((serdoc) => SeriedocumentoMapper.serieDocumentoDBToEntity(serdoc))
    //     .toList();
    // return articulosServicios;
    throw UnimplementedError();
  }

  @override
  Future<List<Entidades>> getEntidades() async {
    final response = await dio.get("/ent_en");
    final entidadesResponse = EntidadesResponse.fromJson(response.data);
    final List<Entidades> entidades = entidadesResponse.entEn
        .map((entidades) => EntidadesMapper.entidadesDBToEntity(entidades))
        .toList();
    return entidades;
  }

  @override
  Future<List<SerieDocumentos>> getSerieDocumento() async {
    final response = await dio.get("/ser_doc_cfg");
    final serieDocumentosResponse =
        SeriedocumentoResponse.fromJson(response.data);
    final List<SerieDocumentos> seriededocumentos = serieDocumentosResponse
        .serDocCfg
        .map((serdoc) => SeriedocumentoMapper.serieDocumentoDBToEntity(serdoc))
        .toList();
    return seriededocumentos;
  }

  @override
  Future<Unidades> getUnidades() {
    throw UnimplementedError();
  }

  @override
  Future<SerieDocumentos?> getSerieDocumentoById(int id) {
    throw UnimplementedError();
  }

  @override
  Future<AllUser?> getUserById(int id) {
    throw UnimplementedError();
  }
}

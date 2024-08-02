import 'package:dio/dio.dart';
import 'package:xc_app_0/features/catalogo/domain/datasources/catalogo_datasource.dart';
import 'package:xc_app_0/features/catalogo/domain/entities/articulos_servicios.dart';
import 'package:xc_app_0/features/catalogo/infrastructure/mappers/seriedocumento_mapper.dart';
import 'package:xc_app_0/features/catalogo/infrastructure/models/serie_documentos/seriedoc_response_xelcron.dart';

import '../../../../config/constants/enviroment.dart';
import '../../domain/entities/entities.dart';
import '../mappers/articulos_mapper.dart';
import '../mappers/entidades_mapper.dart';
import '../models/articulos_servicios/articulos_response_xelcron.dart';
import '../models/entidades/entidades_response_xelcron.dart';

class CatalogoDatasourceImpl extends CatalogoDatasource {
  final dio = Dio(BaseOptions(
      baseUrl: "https://demo-api.xelcron.com/XelCronERP_dat_dat/v2",
      queryParameters: {
        // "filterQuery[ALT_USR]": "103",
        "api_key": Enviroment.apiXelcronKey,
      }));

  @override
  Future<List<ArticulosServicios>> getArticulos() async {
    final response = await dio.get("/art_ma", queryParameters: {
      "filterQuery[ALT_USR]": "103",
    });
    final articulosResponse =
        ArticulosServiciosResponse.fromJson(response.data);
    final List<ArticulosServicios> articulosServicios = articulosResponse.artMa
        .map((articulosdb) => ArticulosMapper.articulosDBToEntity(articulosdb))
        .toList();
    return articulosServicios;
  }

  @override
  Future<List<Entidades>> getEntidades() async {
    final response =
        await dio.get("/ent_en?filterQuery%5Bemp_div%5D=001%20001%20001");
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

  @override
  Future<ArticulosServicios> getArticulosById(String id) async {
    final response = await dio.get("/art_ma/$id");
    if (response.statusCode != 200)
      throw Exception("Articulo Id: $id no encontrada");

    final articulosResponse =
        ArticulosServiciosResponse.fromJson(response.data);
    final List<ArticulosServicios> articulosid = articulosResponse.artMa.map(
      (articulosdbid) {
        return ArticulosMapper.articulosDBToEntity(articulosdbid);
      },
    ).toList();

    return articulosid.first;
  }

  @override
  Future<AllUser> getAllUser() {
    // TODO: implement getAllUser
    throw UnimplementedError();
  }
}

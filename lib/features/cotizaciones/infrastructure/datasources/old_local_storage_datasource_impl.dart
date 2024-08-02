// ignore_for_file: avoid_print

import 'dart:io';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:xc_app_0/features/cotizaciones/domain/datasources/old_local_storage_datasource.dart';
import 'package:xc_app_0/features/cotizaciones/domain/entities/artserv.dart';
import '../../domain/domain.dart';

class IsarDatasource extends LocalStorageDatasource {
  late Future<Isar> db;

  IsarDatasource() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final directory = await getApplicationDocumentsDirectory();
      final path = directory.path;

      final dir = Directory(path);
      if (!await dir.exists()) {
        await dir.create(recursive: true);
      }

      return await Isar.open([CotizacionSchema, ArtservSchema],
          inspector: true, directory: path);
    }
    return Future.value(Isar.getInstance());
  }

  @override
  Future<List<Cotizacion>> getCotizacionesLocal() async {
    final isar = await db;
    final cotizaciones = await isar.cotizacions.where().findAll();
    // print('Cotizaciones locales obtenidas: $cotizaciones');j
    return cotizaciones;
  }

  @override
  Future<void> saveCotizacion(Cotizacion cotizacion) async {
    final isar = await db;

    await isar.writeTxn(() async {
      final existingCotizacion =
          await isar.cotizacions.filter().idEqualTo(cotizacion.id).findFirst();
      if (existingCotizacion != null) {
        print("La cotizacion ya se encuentra, actualizando...");
        cotizacion.idLocal = existingCotizacion.idLocal;
      }
      await isar.cotizacions.put(cotizacion);
    });

    // print('Cotización guardada: $cotizacion');
  }

  @override
  Future<bool> isCotizacionSave(int id) async {
    final isar = await db;
    final Cotizacion? isSaveCotizacion =
        await isar.cotizacions.filter().idEqualTo(id).findFirst();
    return isSaveCotizacion != null;
  }

  @override
  Future<Cotizacion> getCotizacionesLocalById(int idlocal) async {
    final isar = await db;
    final cotizacion = await isar.cotizacions.get(idlocal);

    if (cotizacion == null) {
      throw Exception('Cotización no encontrada para el ID: $idlocal');
    }

    return cotizacion;
  }

  @override
  Future<List<Artserv>> getLineaCotizacionesLocal() async {
    final isar = await db;
    final lincotizacion = await isar.artservs.where().findAll();
    return lincotizacion;
  }

  @override
  Future<List<Artserv>> getLineaCotizacionesLocalById(int idlinea) async {
    final isar = await db;
    final lincotizacion =
        await isar.artservs.filter().idEqualTo(idlinea).findAll();
    return lincotizacion;
  }

  @override
  Future<bool> isLineaCotizacionSave(int id) async {
    final isar = await db;
    final Artserv? isSaveLineaCotizacion =
        await isar.artservs.filter().idEqualTo(id).findFirst();
    return isSaveLineaCotizacion != null;
  }

  @override
  Future<void> saveLineaCotizacion(Artserv artserv) async {
    final isar = await db;
    await isar.writeTxn(() async {
      final existingLineaCotizacion =
          await isar.artservs.filter().idEqualTo(artserv.id).findFirst();
      if (existingLineaCotizacion != null) {
        print("La linea de cotización ya se encuentra, actualizando...");
        artserv.idLocal = existingLineaCotizacion.idLocal;
      }
      await isar.artservs.put(artserv);
    });
  }
}

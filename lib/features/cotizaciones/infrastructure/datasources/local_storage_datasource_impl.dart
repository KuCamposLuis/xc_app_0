import 'dart:io';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:xc_app_0/features/cotizaciones/domain/datasources/local_storage_datasource.dart';
import 'package:xc_app_0/features/cotizaciones/domain/entities/cotizacionl.dart';

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

      return await Isar.open([CotizacionlSchema],
          inspector: true, directory: path);
    }
    return Future.value(Isar.getInstance());
  }

  @override
  Future<List<Cotizacionl>> getCotizacionesLocal() async {
    final isar = await db;
    final cotizaciones = await isar.cotizacionls.where().findAll();
    print('Cotizaciones locales obtenidas: $cotizaciones');
    return cotizaciones;
  }

  @override
  Future<void> saveCotizacion(Cotizacionl cotizacion) async {
    final isar = await db;

    await isar.writeTxn(() async {
      await isar.cotizacionls.put(cotizacion);
    });

    print('Cotización guardada: $cotizacion');
  }

  @override
  Future<bool> isCotizacionSave(int id) async {
    final isar = await db;
    final Cotizacionl? isSaveCotizacion =
        await isar.cotizacionls.filter().idEqualTo(id).findFirst();
    return isSaveCotizacion != null;
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/features/cotizaciones/infrastructure/datasources/old_local_storage_datasource_impl.dart';
import 'package:xc_app_0/features/cotizaciones/infrastructure/repositories/old_local_storage_repository_impl.dart';

final localStorageRepositoryProvider = Provider((ref) {
  return LocalStorageRepositoryImpl(IsarDatasource());
});

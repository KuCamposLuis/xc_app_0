import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/infrastructure/datasources/xelcrondb_datasource.dart';
import 'package:xc_app_0/infrastructure/repositories/xelcron_repository_implement.dart';

// Este repositorio es inmutable
final xelcronRepositoryProvider = Provider((ref) {
  return XelcronRepositoryImplement(XelcronDbDatasource());
});

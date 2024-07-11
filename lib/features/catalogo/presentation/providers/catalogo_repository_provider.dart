import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:xc_app_0/features/catalogo/infrastructure/datasource/catalogo_datasource_impl.dart';
import 'package:xc_app_0/features/catalogo/infrastructure/repositories/catalogo_repository_impl.dart';

final catalogoRepositoryProvider = Provider((ref) {
  return CatalogoRepositoryImpl(CatalogoDatasourceImpl());
});

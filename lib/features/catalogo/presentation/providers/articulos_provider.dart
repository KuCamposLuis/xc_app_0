import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/features/catalogo/domain/entities/entities.dart';
import 'package:xc_app_0/features/catalogo/presentation/providers/catalogo_repository_provider.dart';

final articulosCatProvider =
    StateNotifierProvider<ArticulosNotifier, List<ArticulosServicios>>((ref) {
  final fetchMoreSerieDocumentos =
      ref.watch(catalogoRepositoryProvider).getArticulos;
  return ArticulosNotifier(fetchMoreArticulos: fetchMoreSerieDocumentos);
});

typedef ArticulosCallback = Future<List<ArticulosServicios>> Function();

class ArticulosNotifier extends StateNotifier<List<ArticulosServicios>> {
  int currentPage = 0;
  bool isLoading = false;
  ArticulosCallback fetchMoreArticulos;

  ArticulosNotifier({required this.fetchMoreArticulos}) : super([]);

  Future<void> loadNextPage() async {
    if (isLoading) return;
    isLoading = true;
    print('loading more serie de documentos');
    currentPage++;
    final List<ArticulosServicios> serieDocumentos = await fetchMoreArticulos();
    state = [...state, ...serieDocumentos];
  }
}

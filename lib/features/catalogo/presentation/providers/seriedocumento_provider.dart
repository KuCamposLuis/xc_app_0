import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/features/catalogo/domain/entities/entities.dart';
import 'package:xc_app_0/features/catalogo/presentation/providers/catalogo_repository_provider.dart';

final seriedocumentoProvider =
    StateNotifierProvider<SeriedocumentoNotifier, List<SerieDocumentos>>((ref) {
  final fetchMoreSerieDocumentos =
      ref.watch(catalogoRepositoryProvider).getSerieDocumento;
  return SeriedocumentoNotifier(
      fetchMoreSerieDocumentos: fetchMoreSerieDocumentos);
});

typedef SerieDocumentosCallback = Future<List<SerieDocumentos>> Function(
    {int page});

class SeriedocumentoNotifier extends StateNotifier<List<SerieDocumentos>> {
  int currentPage = 0;
  bool isLoading = false;
  SerieDocumentosCallback fetchMoreSerieDocumentos;

  SeriedocumentoNotifier({required this.fetchMoreSerieDocumentos}) : super([]);

  Future<void> loadNextPage() async {
    if (isLoading) return;
    isLoading = true;
    print('loading more serie de documentos');
    currentPage++;
    final List<SerieDocumentos> serieDocumentos =
        await fetchMoreSerieDocumentos(page: currentPage);
    state = [...state, ...serieDocumentos];
  }
}

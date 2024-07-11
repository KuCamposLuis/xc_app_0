import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/domain/entitis/catalogo/serie_de_documento.dart';
import 'package:xc_app_0/presentation/providers/providers.dart';

final seriedocProvider =
    StateNotifierProvider<SerieDocNotifier, List<SerieDeDocumento>>((ref) {
  final fetchMoreSeriedoc =
      ref.watch(xelcronRepositoryProvider).getSeriesDeDocumento;
  return SerieDocNotifier(fetchMoreSeriedoc: fetchMoreSeriedoc);
});

typedef SerieDocCallback = Future<List<SerieDeDocumento>> Function({int page});

class SerieDocNotifier extends StateNotifier<List<SerieDeDocumento>> {
  int currentPage = 0;
  SerieDocCallback fetchMoreSeriedoc;

  SerieDocNotifier({required this.fetchMoreSeriedoc}) : super([]);

  Future<void> loadNextPage() async {
    currentPage++;
    final List<SerieDeDocumento> seriedoc =
        await fetchMoreSeriedoc(page: currentPage);
    state = [...state, ...seriedoc];
  }
}

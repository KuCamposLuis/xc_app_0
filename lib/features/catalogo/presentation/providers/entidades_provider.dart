import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/entidades.dart';
import 'catalogo_repository_provider.dart';

final entidadesProvider =
    StateNotifierProvider<EntidadesNotifier, List<Entidades>>((ref) {
  final fetchMoreEntidades = ref.watch(catalogoRepositoryProvider).getEntidades;
  return EntidadesNotifier(fetchMoreEntidades: fetchMoreEntidades);
});

typedef EntidadesCallback = Future<List<Entidades>> Function();

class EntidadesNotifier extends StateNotifier<List<Entidades>> {
  bool isLoading = false;
  final EntidadesCallback fetchMoreEntidades;

  EntidadesNotifier({required this.fetchMoreEntidades}) : super([]);

  Future<void> loadEntidades() async {
    if (isLoading) return;
    isLoading = true;
    print('loading more entidades');
    final List<Entidades> entidades = await fetchMoreEntidades();
    state = [...state, ...entidades];
  }
}

// catalogo_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/features/catalogo/presentation/providers/articulos_provider.dart';

class ArticulosView extends ConsumerStatefulWidget {
  const ArticulosView({super.key, required});

  @override
  ArticulosViewState createState() => ArticulosViewState();
}

class ArticulosViewState extends ConsumerState<ArticulosView> {
  @override
  void initState() {
    super.initState();
    ref.read(articulosCatProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final articulos = ref.watch(articulosCatProvider);
    if (articulos.isEmpty) {
      return const CircularProgressIndicator();
    }
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Articulos/Servicios',
        ),
      ),
      body: ListView.builder(
        itemCount: articulos.length,
        itemBuilder: (context, index) {
          final articService = articulos[index];
          return Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: const Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: Text(
                          'Articulos/Servicios',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 80,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          width: 65,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: const AlignmentDirectional(0, 0),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                articService.name,
                                maxLines: 2,
                              ),
                              Text(articService.id.toString()),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

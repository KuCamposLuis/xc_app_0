// catalogo_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/features/catalogo/presentation/providers/entidades_provider.dart';

class EntidadesView extends ConsumerStatefulWidget {
  const EntidadesView({super.key});

  @override
  EntidadesViewState createState() => EntidadesViewState();
}

class EntidadesViewState extends ConsumerState<EntidadesView> {
  @override
  void initState() {
    super.initState();

    ref.read(entidadesProvider.notifier).loadEntidades();
  }

  @override
  Widget build(BuildContext context) {
    final entidades = ref.watch(entidadesProvider);
    if (entidades.isEmpty) {
      return const CircularProgressIndicator();
    }
    return Scaffold(
      backgroundColor: Colors.grey[200], // Cambia el color de fondo aquí

      appBar: AppBar(
        title: const Text('Entidades'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: entidades.length,
          itemBuilder: (context, index) {
            final entidadess = entidades[index];
            return // Generated code for this Column Widget...
                Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12, 8, 16, 4),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            4, 12, 12, 12),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(entidadess.id.toString()),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(0, 4, 0, 0),
                                          child: Text(
                                            entidadess.name,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    alignment: const AlignmentDirectional(0, 0),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(12),
                                        child: Icon(
                                          Icons.folder_open_outlined,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ]));
          },
        ),
      ),
    );
  }
}

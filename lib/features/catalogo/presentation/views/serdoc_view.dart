// catalogo_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/features/catalogo/presentation/providers/seriedocumento_provider.dart';

class SerieDocView extends ConsumerStatefulWidget {
  const SerieDocView({super.key});

  @override
  SerieDocViewState createState() => SerieDocViewState();
}

class SerieDocViewState extends ConsumerState<SerieDocView> {
  @override
  void initState() {
    super.initState();

    ref.read(seriedocumentoProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final seriedoc = ref.watch(seriedocumentoProvider);
    if (seriedoc.isEmpty) {
      return const CircularProgressIndicator();
    }
    return Scaffold(
      backgroundColor: Colors.grey[200], // Cambia el color de fondo aquí

      appBar: AppBar(
        title: const Text('Serie de Documentos'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: seriedoc.length,
          itemBuilder: (context, index) {
            final seriedocum = seriedoc[index];
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
                                        Text(seriedocum.name),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(0, 4, 0, 0),
                                          child: Text(
                                            seriedocum.docModName,
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

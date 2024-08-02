import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xc_app_0/features/cotizaciones/domain/entities/articulosservicios.dart';
import 'package:xc_app_0/features/cotizaciones/presentation/providers/online/articulos_provider.dart';

class Articulos extends ConsumerStatefulWidget {
  final String cotizacionId;
  const Articulos({super.key, required this.cotizacionId});

  @override
  ArticulosViewState createState() => ArticulosViewState();
}

class ArticulosViewState extends ConsumerState<Articulos> {
  @override
  void initState() {
    super.initState();
    ref.read(articulosProvider.notifier).loadArticulos(widget.cotizacionId);
  }

  @override
  void didUpdateWidget(covariant Articulos oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.cotizacionId != widget.cotizacionId) {
      ref.read(articulosProvider.notifier).loadArticulos(widget.cotizacionId);
    }
  }

  Future<void> _refresh() async {
    await ref
        .read(articulosProvider.notifier)
        .refreshArticulos(widget.cotizacionId);
  }

  @override
  Widget build(BuildContext context) {
    final articulos = ref.watch(articulosProvider)[widget.cotizacionId];

    if (articulos == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            strokeWidth: 2,
          ),
        ),
      );
    }

    if (articulos.isEmpty) {
      return const Scaffold(
        body: Center(
          child: Text('No hay artículos disponibles para esta cotización.'),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFFEFECEC),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: ListView.separated(
          padding: const EdgeInsets.fromLTRB(6, 16, 6, 16),
          itemCount: articulos.length,
          separatorBuilder: (_, __) => const SizedBox(height: 8),
          itemBuilder: (context, index) {
            final articulo = articulos[index];
            return InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                // Acción al hacer clic
              },
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            alignment: AlignmentDirectional.center,
                            child: const Icon(
                              Icons.now_widgets_rounded,
                              color: Colors.grey,
                              size: 32,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 4, 0, 4),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  articulo.art,
                                  maxLines: 2,
                                  style: const TextStyle(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Cantidad: ${articulo.can.toString()}",
                                  style: const TextStyle(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 14,
                                    letterSpacing: 0,
                                    color: Colors.black,
                                  ),
                                ),
                                const Text(
                                  "Impuesto: ",
                                  style: TextStyle(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 14,
                                    letterSpacing: 0,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "\$: ${articulo.pre.toString()}",
                                  style: const TextStyle(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 14,
                                    color: Colors.red,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.delete,
                                  color: Colors.red, size: 35),
                              onPressed: () {
                                // Acción al presionar el botón
                              },
                            ),
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                              child: Icon(Icons.arrow_forward_ios,
                                  color: Colors.black, size: 25),
                            ),
                          ],
                        ),
                      ].divide(const SizedBox(width: 16)),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        heroTag: 'uniqueHeroTag1',
        label: const Text('Añadir Articulo'),
        icon: const Icon(Icons.add),
        onPressed: () {
          // Acción al presionar el botón
        },
      ),
    );
  }
}

extension WidgetListExtension on List<Widget> {
  List<Widget> divide(SizedBox divider) {
    if (isEmpty) return this;
    return expand((widget) => [widget, divider]).toList()..removeLast();
  }
}

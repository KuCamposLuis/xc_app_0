import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:xc_app_0/features/cotizaciones/domain/entities/cotizacion.dart';
import 'package:xc_app_0/features/cotizaciones/presentation/providers/cotizacion_provider.dart';

class CotizacionesView extends ConsumerStatefulWidget {
  const CotizacionesView({super.key});

  @override
  CotizacionesViewState createState() => CotizacionesViewState();
}

class CotizacionesViewState extends ConsumerState<CotizacionesView> {
  @override
  void initState() {
    super.initState();

    ref.read(cotizacionesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final cotizaciones = ref.watch(cotizacionesProvider);
    if (cotizaciones.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return ListView.builder(
        itemCount: cotizaciones.length,
        itemBuilder: (context, index) {
          final cotizacion = cotizaciones[index];

          return Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            child: ListView(
              padding: EdgeInsets.zero,
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                CotizacionWidget(cotizacion: cotizacion),
              ],
            ),
          );
        });
  }
}

class CotizacionWidget extends StatelessWidget {
  const CotizacionWidget({
    super.key,
    required this.cotizacion,
  });

  final Cotizacion cotizacion;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push("/cotizaciones/cotizacion/${cotizacion.id}"),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                blurRadius: 4,
                color: Color(0xFFFFFFFF),
                offset: Offset(0.0, 2),
              ),
            ],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color.fromARGB(255, 186, 176, 176),
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(12, 8, 12, 12),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: const Color.fromARGB(255, 236, 113, 113),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: const Icon(
                                    Icons.layers_sharp,
                                    size: 60,
                                  )),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cotizacion.id.toString(),
                              style: const TextStyle(
                                color: Color.fromARGB(255, 63, 51, 51),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 4, 0, 0),
                              child: Text(
                                cotizacion.serDoc,
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 63, 51, 51),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(
                    height: 24,
                    thickness: 1,
                    color: Colors.grey[300],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Luis Jose Ku Campos',
                            style: TextStyle(
                              color: Color.fromARGB(255, 63, 51, 51),
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '17/05/2024',
                            style: TextStyle(
                              color: Color.fromARGB(255, 63, 51, 51),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: 90,
                        height: 32,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE9EEFF),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        alignment: const AlignmentDirectional(0, 0),
                        child: const Text(
                          'Pendiente',
                          style: TextStyle(
                            color: Color.fromARGB(255, 63, 51, 51),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

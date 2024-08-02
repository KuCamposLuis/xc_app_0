import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:xc_app_0/features/cotizaciones/presentation/providers/storage/old_storage_cotizacion_provider.dart';
import 'package:xc_app_0/features/cotizaciones/presentation/providers/storage/storage_lincotizacion_provider.dart';

class LocalCotizacionHomeView extends ConsumerStatefulWidget {
  const LocalCotizacionHomeView({super.key});

  @override
  LocalCotizacionHomeViewState createState() => LocalCotizacionHomeViewState();
}

class LocalCotizacionHomeViewState
    extends ConsumerState<LocalCotizacionHomeView> {
  @override
  void initState() {
    super.initState();
    ref.read(storageCotizacionProvider.notifier).loadCotizacion();
  }

  @override
  Widget build(BuildContext context) {
    final cotizaciones = ref.watch(storageCotizacionProvider).values.toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cotizaciones'),
        toolbarHeight: 70,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
                right: 15.0), // Añade un espacio a la derecha del botón.
            child: TextButton.icon(
              onPressed: () async {
                await ref
                    .read(storageCotizacionProvider.notifier)
                    .syncCotizaciones();
                await ref
                    .read(storageLinCotizacionProvider.notifier)
                    .syncLinCotizaciones();
              },
              label: const Text(
                'Sincronizar',
                style: TextStyle(color: Colors.white),
              ),
              icon: const Icon(Icons.sync, color: Colors.white, size: 25),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
          ),
        ],
      ),
      body: cotizaciones.isEmpty
          ? Center(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.layers_clear,
                      size: 100,
                      color: Colors.grey,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'No hay cotizaciones por mostrar.',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextButton.icon(
                      onPressed: () {},
                      label: const Text(
                        'Sincronizar',
                        style: TextStyle(color: Colors.white),
                      ),
                      icon:
                          const Icon(Icons.sync, color: Colors.white, size: 25),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            )
          : ListView.builder(
              itemCount: cotizaciones.length,
              itemBuilder: (context, index) {
                final cotizacion = cotizaciones[index];
                return GestureDetector(
                  onTap: () => context
                      .push("/facturas/cotizacion/${cotizacion.idLocal}"),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
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
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(12, 8, 12, 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 4, 6, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 12, 0),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: const Color.fromARGB(
                                          255, 236, 113, 113),
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: const Icon(
                                            Icons.layers_sharp,
                                            size: 60,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        cotizacion.serFol,
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 63, 51, 51),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(0, 4, 0, 0),
                                        child: Text(
                                          cotizacion.serDoc,
                                          style: const TextStyle(
                                            color:
                                                Color.fromARGB(255, 63, 51, 51),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  // IconButton(
                                  //   icon: isSaved.when(
                                  //       data: (isSaved) => isSaved
                                  //           ? const Icon(Icons.check_circle,
                                  //               color: Colors.green, size: 40)
                                  //           : const Icon(
                                  //               Icons.cloud_download_rounded,
                                  //               color: Colors.blueGrey,
                                  //               size: 40,
                                  //             ),
                                  //       error: (_, __) => throw UnimplementedError(),
                                  //       loading: () => const CircularProgressIndicator(
                                  //           strokeWidth: 2)),
                                  //   //
                                  //   onPressed: () async {
                                  //     await ref
                                  //         .read(storageCotizacionProvider.notifier)
                                  //         .saveCotizacion(cotizacion);
                                  //     // ref
                                  //     //     .watch(localStorageRepositoryProvider)
                                  //     //     .saveCotizacion(cotizacion);

                                  //     ref.invalidate(isSavedProvider(cotizacion.id));
                                  //   },
                                  // )
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      cotizacion.cltEnt.toString(),
                                      style: const TextStyle(
                                        color: Color.fromARGB(255, 63, 51, 51),
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      DateFormat('dd/MM/yyyy').format(
                                          DateTime.parse(
                                              cotizacion.fch.toString())),
                                      style: const TextStyle(
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
                                  child: Text(
                                    cotizacion.est,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 63, 51, 51),
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:go_router/go_router.dart';
// import 'package:intl/intl.dart';
// import 'package:xc_app_0/features/cotizaciones/presentation/providers/storage/old_storage_cotizacion_provider.dart';

// class LocalCotizacionHomeView extends ConsumerStatefulWidget {
//   const LocalCotizacionHomeView({super.key});

//   @override
//   LocalCotizacionHomeViewState createState() => LocalCotizacionHomeViewState();
// }

// class LocalCotizacionHomeViewState
//     extends ConsumerState<LocalCotizacionHomeView> {
//   @override
//   void initState() {
//     super.initState();
//     ref.read(storageCotizacionProvider.notifier).loadCotizacion();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final cotizaciones = ref.watch(storageCotizacionProvider).values.toList();
//     if (cotizaciones.isEmpty) {
//       return const Center(
//         child: Text('No hay cotizaciones disponibles.'),
//       );
//     }
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: cotizaciones.length,
//         itemBuilder: (context, index) {
//           final cotizacion = cotizaciones[index];
//           return GestureDetector(
//             onTap: () =>
//                 context.push("/cotizaciones/cotizacion/${cotizacion.id}"),
//             child: Padding(
//               padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
//               child: Container(
//                 width: 300,
//                 decoration: BoxDecoration(
//                   boxShadow: const [
//                     BoxShadow(
//                       blurRadius: 4,
//                       color: Color(0xFFFFFFFF),
//                       offset: Offset(0.0, 2),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.circular(12),
//                   border: Border.all(
//                     color: const Color.fromARGB(255, 186, 176, 176),
//                     width: 1,
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsetsDirectional.fromSTEB(12, 8, 12, 12),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding:
//                             const EdgeInsetsDirectional.fromSTEB(0, 4, 6, 0),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsetsDirectional.fromSTEB(
//                                   0, 0, 12, 0),
//                               child: Card(
//                                 clipBehavior: Clip.antiAliasWithSaveLayer,
//                                 color: const Color.fromARGB(255, 236, 113, 113),
//                                 elevation: 0,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(2),
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(12),
//                                     child: const Icon(
//                                       Icons.layers_sharp,
//                                       size: 60,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Column(
//                               mainAxisSize: MainAxisSize.max,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   cotizacion.serFol,
//                                   style: const TextStyle(
//                                     color: Color.fromARGB(255, 63, 51, 51),
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsetsDirectional.fromSTEB(
//                                       0, 4, 0, 0),
//                                   child: Text(
//                                     cotizacion.serDoc,
//                                     style: const TextStyle(
//                                       color: Color.fromARGB(255, 63, 51, 51),
//                                       fontSize: 14,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             const Spacer(),
//                             // IconButton(
//                             //   icon: isSaved.when(
//                             //       data: (isSaved) => isSaved
//                             //           ? const Icon(Icons.check_circle,
//                             //               color: Colors.green, size: 40)
//                             //           : const Icon(
//                             //               Icons.cloud_download_rounded,
//                             //               color: Colors.blueGrey,
//                             //               size: 40,
//                             //             ),
//                             //       error: (_, __) => throw UnimplementedError(),
//                             //       loading: () => const CircularProgressIndicator(
//                             //           strokeWidth: 2)),
//                             //   //
//                             //   onPressed: () async {
//                             //     await ref
//                             //         .read(storageCotizacionProvider.notifier)
//                             //         .saveCotizacion(cotizacion);
//                             //     // ref
//                             //     //     .watch(localStorageRepositoryProvider)
//                             //     //     .saveCotizacion(cotizacion);

//                             //     ref.invalidate(isSavedProvider(cotizacion.id));
//                             //   },
//                             // )
//                           ],
//                         ),
//                       ),
//                       Divider(
//                         height: 24,
//                         thickness: 1,
//                         color: Colors.grey[300],
//                       ),
//                       Row(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 cotizacion.cltEnt.toString(),
//                                 style: TextStyle(
//                                   color: Color.fromARGB(255, 63, 51, 51),
//                                   fontSize: 14,
//                                 ),
//                               ),
//                               Text(
//                                 DateFormat('dd/MM/yyyy').format(
//                                     DateTime.parse(cotizacion.fch.toString())),
//                                 style: TextStyle(
//                                   color: Color.fromARGB(255, 63, 51, 51),
//                                   fontSize: 14,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const Spacer(),
//                           Container(
//                             width: 90,
//                             height: 32,
//                             decoration: BoxDecoration(
//                               color: const Color(0xFFE9EEFF),
//                               borderRadius: BorderRadius.circular(32),
//                             ),
//                             alignment: const AlignmentDirectional(0, 0),
//                             child: Text(
//                               cotizacion.est,
//                               style: TextStyle(
//                                 color: Color.fromARGB(255, 63, 51, 51),
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }


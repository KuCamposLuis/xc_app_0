// catalogo_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:xc_app_0/features/cotizaciones/domain/entities/cotizacion.dart';
import 'package:xc_app_0/features/cotizaciones/presentation/providers/online/cotizacion_info_provider.dart';
import 'package:xc_app_0/features/cotizaciones/presentation/views/otros_view.dart';

import '../../providers/storage/local_info_cotizacion_provider.dart';

class LocalCotizacionIndView extends ConsumerStatefulWidget {
  final int cotizacionId;
  const LocalCotizacionIndView({super.key, required this.cotizacionId});

  @override
  CotizacionIndViewState createState() => CotizacionIndViewState();
}

class CotizacionIndViewState extends ConsumerState<LocalCotizacionIndView> {
  @override
  void initState() {
    super.initState();
    ref
        .read(localCotizacionInfoProvider.notifier)
        .loadCotizacion(widget.cotizacionId);
  }

  @override
  Widget build(BuildContext context) {
    final Cotizacion? cotizacion =
        ref.watch(localCotizacionInfoProvider)[widget.cotizacionId];
    if (cotizacion == null) {
      return Scaffold(
        body: Center(
            child: Text(
                "No se encuentra el id de la cotizacion ${widget.cotizacionId}")),
      );
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFEFECEC),
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text('Cotizacion Individual: ${widget.cotizacionId}'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.description_outlined),
                  text: 'Detalles',
                ),
                Tab(
                  icon: Icon(Icons.view_in_ar),
                  text: 'Articulos',
                ),
                Tab(
                  icon: Icon(Icons.storage),
                  text: 'other',
                ),
              ],
            )),
        body: TabBarView(children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 1,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x2C000000),
                        offset: Offset(0.0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(
                      color: const Color(0xFFEFECEF),
                      width: 1,
                    )),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 12, 0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: const Color(0xFF34D488),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: const Icon(
                                      Icons.layers,
                                      size: 60,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                                child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  cotizacion.serFol,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: Text(
                                      cotizacion.serDoc,
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey),
                                    ))
                              ],
                            )),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                  size: 24,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                        child: Text(
                          "Cliente:",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                        child: Container(
                          width: double.infinity,
                          constraints: const BoxConstraints(
                            maxWidth: 430,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(12),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: const Icon(
                                        Icons.person,
                                        size: 44,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(12, 0, 0, 0),
                                        child: Text(
                                          cotizacion.cltEnt.toString(),
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black),
                                        )),
                                  ],
                                )),
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.chevron_right_outlined,
                                      size: 40,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        height: 50,
                        thickness: 3,
                        color: Colors.grey[300],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            DateFormat('dd/MM/yyyy').format(
                                DateTime.parse(cotizacion.fch.toString())),
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue),
                          ),
                          const Spacer(),
                          Container(
                            height: 32,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE9EEFF),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: const Color(0xFF0177FD),
                                width: 1,
                              ),
                            ),
                            alignment: const AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16, 0, 16, 0),
                              child: Text(
                                cotizacion.est,
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const OtherView(),
          // Articulos(cotizacionId: widget.cotizacionId),
          const OtherView(),
        ]),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text('Añadir Articulo'),
          icon: const Icon(Icons.add),
          onPressed: () {
            // context.go('/cotizaciones/Nueva_Cotizacion');
          },
        ),
      ),
    );
  }
}

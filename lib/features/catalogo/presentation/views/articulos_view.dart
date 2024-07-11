// catalogo_detail_screen.dart
import 'package:flutter/material.dart';

class ArticulosView extends StatelessWidget {
  const ArticulosView({super.key, required});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Articulos/Servicios',
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
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
              child: Row(mainAxisSize: MainAxisSize.max, children: [
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
                const Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "name",
                          maxLines: 2,
                        ),
                        Text("name"),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                ),
              ]),
            ),
          )
        ],
      )),
    );
  }
}



//       Builder(
//         builder: (context) {
//           if (_model.hasError) {
          
//           } else if (_model.isLoading) {
//             return Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 32),
//               child: ListView(
//                 padding: EdgeInsets.zero,
//                 primary: false,
//                 shrinkWrap: true,
//                 scrollDirection: Axis.vertical,
//                 children: [
//                   Card(
//                     clipBehavior: Clip.antiAliasWithSaveLayer,
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                     elevation: 2,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: ClipRect(
//                       child: ImageFiltered(
//                         imageFilter: ImageFilter.blur(
//                           sigmaX: 2,
//                           sigmaY: 2,
//                         ),
//                         child: Container(
//                           width: double.infinity,
//                           height: 80,
//                           decoration: BoxDecoration(),
//                           child: Padding(
//                             padding: EdgeInsets.all(8),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Opacity(
//                                   opacity: 0.7,
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(8),
//                                     child: Container(
//                                       width: 65,
//                                       height: double.infinity,
//                                       decoration: BoxDecoration(
//                                         color: FlutterFlowTheme.of(context)
//                                             .alternate,
//                                         borderRadius:
//                                             BorderRadius.circular(8),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         0, 4, 0, 4),
//                                     child: Column(
//                                       mainAxisSize: MainAxisSize.max,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Opacity(
//                                           opacity: 0.7,
//                                           child: Padding(
//                                             padding: EdgeInsetsDirectional
//                                                 .fromSTEB(0, 0, 32, 0),
//                                             child: Container(
//                                               width: double.infinity,
//                                               height: 20,
//                                               decoration: BoxDecoration(
//                                                 color: FlutterFlowTheme.of(
//                                                         context)
//                                                     .alternate,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         Opacity(
//                                           opacity: 0.7,
//                                           child: Padding(
//                                             padding: EdgeInsetsDirectional
//                                                 .fromSTEB(0, 0, 64, 0),
//                                             child: Container(
//                                               width: double.infinity,
//                                               height: 20,
//                                               decoration: BoxDecoration(
//                                                 color: FlutterFlowTheme.of(
//                                                         context)
//                                                     .alternate,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ].divide(SizedBox(height: 4)),
//                                     ),
//                                   ),
//                                 ),
//                               ].divide(SizedBox(width: 16)),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Card(
//                     clipBehavior: Clip.antiAliasWithSaveLayer,
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                     elevation: 2,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: ClipRect(
//                       child: ImageFiltered(
//                         imageFilter: ImageFilter.blur(
//                           sigmaX: 2,
//                           sigmaY: 2,
//                         ),
//                         child: Container(
//                           width: double.infinity,
//                           height: 80,
//                           decoration: BoxDecoration(),
//                           child: Padding(
//                             padding: EdgeInsets.all(8),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Opacity(
//                                   opacity: 0.7,
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(8),
//                                     child: Container(
//                                       width: 65,
//                                       height: double.infinity,
//                                       decoration: BoxDecoration(
//                                         color: FlutterFlowTheme.of(context)
//                                             .alternate,
//                                         borderRadius:
//                                             BorderRadius.circular(8),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         0, 4, 0, 4),
//                                     child: Column(
//                                       mainAxisSize: MainAxisSize.max,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Opacity(
//                                           opacity: 0.7,
//                                           child: Padding(
//                                             padding: EdgeInsetsDirectional
//                                                 .fromSTEB(0, 0, 32, 0),
//                                             child: Container(
//                                               width: double.infinity,
//                                               height: 20,
//                                               decoration: BoxDecoration(
//                                                 color: FlutterFlowTheme.of(
//                                                         context)
//                                                     .alternate,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         Opacity(
//                                           opacity: 0.7,
//                                           child: Padding(
//                                             padding: EdgeInsetsDirectional
//                                                 .fromSTEB(0, 0, 64, 0),
//                                             child: Container(
//                                               width: double.infinity,
//                                               height: 20,
//                                               decoration: BoxDecoration(
//                                                 color: FlutterFlowTheme.of(
//                                                         context)
//                                                     .alternate,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ].divide(SizedBox(height: 4)),
//                                     ),
//                                   ),
//                                 ),
//                               ].divide(SizedBox(width: 16)),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Card(
//                     clipBehavior: Clip.antiAliasWithSaveLayer,
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                     elevation: 2,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: ClipRect(
//                       child: ImageFiltered(
//                         imageFilter: ImageFilter.blur(
//                           sigmaX: 2,
//                           sigmaY: 2,
//                         ),
//                         child: Container(
//                           width: double.infinity,
//                           height: 80,
//                           decoration: BoxDecoration(),
//                           child: Padding(
//                             padding: EdgeInsets.all(8),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Opacity(
//                                   opacity: 0.7,
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(8),
//                                     child: Container(
//                                       width: 65,
//                                       height: double.infinity,
//                                       decoration: BoxDecoration(
//                                         color: FlutterFlowTheme.of(context)
//                                             .alternate,
//                                         borderRadius:
//                                             BorderRadius.circular(8),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         0, 4, 0, 4),
//                                     child: Column(
//                                       mainAxisSize: MainAxisSize.max,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Opacity(
//                                           opacity: 0.7,
//                                           child: Padding(
//                                             padding: EdgeInsetsDirectional
//                                                 .fromSTEB(0, 0, 32, 0),
//                                             child: Container(
//                                               width: double.infinity,
//                                               height: 20,
//                                               decoration: BoxDecoration(
//                                                 color: FlutterFlowTheme.of(
//                                                         context)
//                                                     .alternate,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         Opacity(
//                                           opacity: 0.7,
//                                           child: Padding(
//                                             padding: EdgeInsetsDirectional
//                                                 .fromSTEB(0, 0, 64, 0),
//                                             child: Container(
//                                               width: double.infinity,
//                                               height: 20,
//                                               decoration: BoxDecoration(
//                                                 color: FlutterFlowTheme.of(
//                                                         context)
//                                                     .alternate,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ].divide(SizedBox(height: 4)),
//                                     ),
//                                   ),
//                                 ),
//                               ].divide(SizedBox(width: 16)),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ).animateOnPageLoad(
//                   animationsMap['listViewOnPageLoadAnimation']!),
//             );
//           } else if (!(_model.products.isNotEmpty)) {
//             return Container(
//               width: double.infinity,
//               decoration: BoxDecoration(),
//               child: Align(
//                 alignment: AlignmentDirectional(0, 0),
//                 child: Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(32, 64, 32, 64),
//                   child: Text(
//                     'No products were found with the specified name or code.',
//                     textAlign: TextAlign.center,
//                     style: FlutterFlowTheme.of(context).bodyMedium.override(
//                           fontFamily: 'Readex Pro',
//                           color: FlutterFlowTheme.of(context).secondaryText,
//                           letterSpacing: 0,
//                         ),
//                   ),
//                 ),
//               ),
//             );
//           } else {
//             return Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
//               child: Builder(
//                 builder: (context) {
//                   final product = (_model.category != 'All'
//                           ? _model.products
//                               .where((e) => e.category == _model.category)
//                               .toList()
//                           : _model.products)
//                       .toList()
//                       .take(500)
//                       .toList();
//                   if (product.isEmpty) {
//                     return EmptyListWidget();
//                   }
//                   return ListView.separated(
//                     padding: EdgeInsets.zero,
//                     primary: false,
//                     shrinkWrap: true,
//                     scrollDirection: Axis.vertical,
//                     itemCount: product.length,
//                     separatorBuilder: (_, __) => SizedBox(height: 2),
//                     itemBuilder: (context, productIndex) {
//                       final productItem = product[productIndex];
//                       return InkWell(
//                         splashColor: Colors.transparent,
//                         focusColor: Colors.transparent,
//                         hoverColor: Colors.transparent,
//                         highlightColor: Colors.transparent,
//                         onTap: () async {
//                           context.pushNamed(
//                             'ProductPage',
//                             queryParameters: {
//                               'sku': serializeParam(
//                                 productItem.sku,
//                                 ParamType.String,
//                               ),
//                             }.withoutNulls,
//                           );
//                         },
//                         child: Card(
//                           clipBehavior: Clip.antiAliasWithSaveLayer,
//                           color: FlutterFlowTheme.of(context)
//                               .secondaryBackground,
//                           elevation: 2,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           child: Container(
//                             width: double.infinity,
//                             height: 80,
//                             decoration: BoxDecoration(),
//                             child: Padding(
//                               padding: EdgeInsets.all(8),
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 children: [
//                                   ClipRRect(
//                                     borderRadius: BorderRadius.circular(8),
//                                     child: Container(
//                                       width: 65,
//                                       height: double.infinity,
//                                       decoration: BoxDecoration(
//                                         color:
//                                             FlutterFlowTheme.of(context).info,
//                                         borderRadius:
//                                             BorderRadius.circular(8),
//                                       ),
//                                       alignment: AlignmentDirectional(0, 0),
//                                       child: Builder(
//                                         builder: (context) {
//                                           if (productItem.hasImage()) {
//                                             return Padding(
//                                               padding: EdgeInsets.all(2),
//                                               child: CachedNetworkImage(
//                                                 fadeInDuration: Duration(
//                                                     milliseconds: 500),
//                                                 fadeOutDuration: Duration(
//                                                     milliseconds: 500),
//                                                 imageUrl: productItem.image,
//                                                 width: double.infinity,
//                                                 height: double.infinity,
//                                                 fit: BoxFit.contain,
//                                               ),
//                                             );
//                                           } else {
//                                             return Icon(
//                                               Icons.now_widgets_rounded,
//                                               color:
//                                                   FlutterFlowTheme.of(context)
//                                                       .secondaryText,
//                                               size: 32,
//                                             );
//                                           }
//                                         },
//                                       ),
//                                     ),
//                                   ),
//                                   Expanded(
//                                     child: Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(
//                                           0, 4, 0, 4),
//                                       child: Column(
//                                         mainAxisSize: MainAxisSize.max,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             productItem.name,
//                                             maxLines: 2,
//                                             style:
//                                                 FlutterFlowTheme.of(context)
//                                                     .bodyMedium
//                                                     .override(
//                                                       fontFamily:
//                                                           'Readex Pro',
//                                                       letterSpacing: 0,
//                                                     ),
//                                           ),
//                                           Text(
//                                             productItem.sku,
//                                             style: FlutterFlowTheme.of(
//                                                     context)
//                                                 .bodyMedium
//                                                 .override(
//                                                   fontFamily: 'Readex Pro',
//                                                   color: FlutterFlowTheme.of(
//                                                           context)
//                                                       .secondaryText,
//                                                   letterSpacing: 0,
//                                                 ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         0, 0, 8, 0),
//                                     child: FaIcon(
//                                       FontAwesomeIcons.angleRight,
//                                       color: FlutterFlowTheme.of(context)
//                                           .secondaryText,
//                                       size: 20,
//                                     ),
//                                   ),
//                                 ].divide(SizedBox(width: 16)),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ).animateOnPageLoad(
//                           animationsMap['cardOnPageLoadAnimation']!);
//                     },
//                   );
//                 },
//               ),
//             );
//           }
//         },
//       ),
//     ].divide(SizedBox(height: 12)).around(SizedBox(height: 12)),
//   ),
// )

//     );
//   }
// }

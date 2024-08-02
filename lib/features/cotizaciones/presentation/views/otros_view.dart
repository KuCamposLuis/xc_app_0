import 'package:flutter/material.dart';

class OtherView extends StatelessWidget {
  const OtherView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 10, // Número de elementos de muestra
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, itemIndex) {
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
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Product Name",
                              maxLines: 2,
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                fontSize: 16,
                                letterSpacing: 0,
                                color: Colors.black,
                              ),
                            ),
                            const Text(
                              "Product SKU",
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                fontSize: 14,
                                letterSpacing: 0,
                                color: Colors.grey,
                              ),
                            ),
                            RichText(
                              textScaleFactor:
                                  MediaQuery.of(context).textScaleFactor,
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Derivation: ',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: "Derivation Name",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                            RichText(
                              textScaleFactor:
                                  MediaQuery.of(context).textScaleFactor,
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: "20",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: ' m² - HxW (cm): ',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: "200",
                                    style: TextStyle(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 14,
                                      letterSpacing: 0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' x ',
                                    style: TextStyle(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 14,
                                      letterSpacing: 0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "100",
                                    style: TextStyle(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 14,
                                      letterSpacing: 0,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                            RichText(
                              textScaleFactor:
                                  MediaQuery.of(context).textScaleFactor,
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Quantity: ',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: "10",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                            const Text(
                              "100.00",
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                fontSize: 14,
                                color: Colors.orange,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            RichText(
                              textScaleFactor:
                                  MediaQuery.of(context).textScaleFactor,
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: "10",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: '% OFF',
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            RichText(
                              textScaleFactor:
                                  MediaQuery.of(context).textScaleFactor,
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Obs.: ',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: "Observations",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                ),
                              ),
                              maxLines: 2,
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
                          icon: const Icon(Icons.track_changes,
                              color: Colors.blue, size: 18),
                          onPressed: () {
                            // Acción al presionar el botón
                          },
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                          child: Icon(Icons.ac_unit_sharp,
                              color: Colors.grey, size: 18),
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
    );
  }
}

extension WidgetListExtension on List<Widget> {
  List<Widget> divide(SizedBox divider) {
    if (this.isEmpty) return this;
    return this.expand((widget) => [widget, divider]).toList()..removeLast();
  }
}

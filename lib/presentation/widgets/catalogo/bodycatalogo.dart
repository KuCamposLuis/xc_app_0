import 'package:flutter/material.dart';
import 'package:xc_app_0/presentation/widgets/widgets.dart';

class BodyCatalogo extends StatelessWidget {
  const BodyCatalogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
              child: Container(
                width: double.infinity,
                height: 700,
                decoration: const BoxDecoration(
                  color: Color(0xFFEFECEC),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsetsDirectional.fromSTEB(31, 0, 25, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: Text(
                          "Categorias",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color.fromARGB(255, 63, 51, 51),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                          child: GridView(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 1,
                            ),
                            scrollDirection: Axis.vertical,
                            children: const [
                              WidgetCategoria(
                                iconData: Icons.view_in_ar,
                                textCategoria: 'Artículos/Serv.',
                              ),
                              WidgetCategoria(
                                iconData: Icons.supervisor_account_rounded,
                                textCategoria: 'Entidades',
                              ),
                              WidgetCategoria(
                                iconData: Icons.description,
                                textCategoria: 'Ser. Doc.',
                              ),
                              WidgetCategoria(
                                iconData: Icons.extension,
                                textCategoria: 'Unidad',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

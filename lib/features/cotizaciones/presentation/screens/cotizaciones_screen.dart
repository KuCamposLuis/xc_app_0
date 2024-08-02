import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xc_app_0/features/cotizaciones/presentation/views/online/cotizaciones_home_views.dart';

class CotizacionesScreen extends StatelessWidget {
  const CotizacionesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      // drawer: SideMenu(scaffoldKey: scaffoldKey),
      appBar: AppBar(
        title: const Text('Cotizaciones'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded))
        ],
      ),
      body: const CotizacionesView(),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Nueva Cotizacion'),
        icon: const Icon(Icons.add),
        onPressed: () {
          context.go('/cotizaciones/Nueva_Cotizacion');
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/presentation/providers/xelcron/cotizaciones_providers.dart';

class CotizacionHomeScreen extends StatelessWidget {
  static const name = 'cotizacion-home-screen';
  const CotizacionHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: _HomeView(),
      ),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();

    ref.read(cotizacionesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final cotizaciones = ref.watch(cotizacionesProvider);
    if (cotizaciones.length == 0) {
      return const CircularProgressIndicator();
    }
    return ListView.builder(
        itemCount: cotizaciones.length,
        itemBuilder: (context, index) {
          final cotizacion = cotizaciones[index];
          return ListTile(
            title: Text(cotizacion.serFol),
            subtitle: Text(cotizacion.serDoc.toString()),
          );
        });
  }
}

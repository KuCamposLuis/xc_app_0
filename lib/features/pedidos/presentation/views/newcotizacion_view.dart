// catalogo_detail_screen.dart
import 'package:flutter/material.dart';

class NewCotizacionView extends StatelessWidget {
  const NewCotizacionView({super.key, required});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nueva Cotizacion'),
      ),
      body: const Center(
        child: Text(
          'Contenido de Nueva Cotizacion',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

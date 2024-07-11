// catalogo_detail_screen.dart
import 'package:flutter/material.dart';

class UnidadesView extends StatelessWidget {
  const UnidadesView({super.key, required});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unidades de Medida'),
      ),
      body: const Center(
        child: Text(
          'Contenido de UnidadView',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

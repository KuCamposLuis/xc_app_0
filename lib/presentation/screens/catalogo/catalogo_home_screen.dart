import 'package:flutter/material.dart';
import 'package:xc_app_0/presentation/widgets/catalogo/bodycatalogo.dart';

class CatalogoHomeScreenprueba extends StatelessWidget {
  static const name = 'catalogo-home-screen';
  const CatalogoHomeScreenprueba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalogo'),
      ),
      body: const BodyCatalogo(),
    );
  }
}

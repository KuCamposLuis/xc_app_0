import 'package:flutter/material.dart';

import '../widgets/body_catalogo_widget.dart';

class CatalogoHomeScreen extends StatelessWidget {
  static const name = 'catalogo-home-screen';
  const CatalogoHomeScreen({super.key});

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

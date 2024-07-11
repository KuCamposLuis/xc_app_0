import 'package:flutter/material.dart';
import 'package:xc_app_0/presentation/widgets/widgets.dart';

class PruebaScreen extends StatelessWidget {
  static const name = 'prueba-screen';
  const PruebaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text('Home Screen Prueba'),
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

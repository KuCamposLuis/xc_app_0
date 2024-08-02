import 'package:flutter/material.dart';
import 'package:xc_app_0/features/home/widgets/side_menu.dart';
import 'package:xc_app_0/features/home/widgets/custom_bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  final Widget childView;

  const HomeScreen({super.key, required this.childView});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      body: childView,
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int selectedIndex = 2;
  void onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go("/cotizaciones");
        break;
      case 1:
        context.go("/pedidos");
        break;
      case 2:
        context.go("/"); //home
        break;
      case 3:
        context.go("/facturas");
        break;
      case 4:
        context.go("/catalogo");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      type: BottomNavigationBarType.shifting,
      onTap: (value) {
        setState(
          () {
            selectedIndex = value;
            onItemTapped(context, value);
          },
        );
      },

      // onTap: (value) {
      //   onItemTapped(context, value);
      // },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.edit_square),
          label: 'Cotizaciones',
          backgroundColor: Colors.black,
          activeIcon: Icon(Icons.edit),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_mall_sharp),
          label: 'Pedidos',
          backgroundColor: Colors.black,
          activeIcon: Icon(Icons.local_mall_rounded),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
          backgroundColor: Colors.black,
          activeIcon: Icon(Icons.home_filled),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt),
          label: 'Facturas',
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.public),
          label: 'Catalogo',
          backgroundColor: Colors.black,
        ),
      ],
    );
  }
}

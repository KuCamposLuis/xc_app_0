import 'package:flutter/material.dart';

class Imagelogin extends StatelessWidget {
  final Widget child;
  const Imagelogin({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final backgroundColor = Theme.of(context).scaffoldBackgroundColor;

    return SizedBox.expand(
      child: Stack(
        children: [
          Positioned(child: Container(color: backgroundColor)),

          // Background with shapes
          Container(
            height: size.height * 0.7,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Imagen5.jpg'),
                alignment: Alignment.topRight,
                fit: BoxFit.fitWidth,
              ),
              color: Colors.black,
            ),
          ),

          // Child widget
          child,
        ],
      ),
    );
  }
}

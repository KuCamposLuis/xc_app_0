import 'package:flutter/material.dart';

class WidgetCategoria extends StatelessWidget {
  final IconData iconData;
  final String textCategoria;
  final VoidCallback onTap;

  const WidgetCategoria({
    super.key,
    required this.iconData,
    required this.textCategoria,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0, 0),
      child: Material(
        color: Colors
            .transparent, // Asegúrate de que el Material tenga color transparente
        child: InkWell(
          focusColor: Colors.grey.withOpacity(0.20),
          hoverDuration: const Duration(milliseconds: 100),
          highlightColor: Colors.black.withOpacity(0.10),
          hoverColor: Colors.blue,
          borderRadius: BorderRadius.circular(1),
          splashColor: Colors.grey.withOpacity(0.0),
          // Agrega una animación de toque visible
          onTap: onTap,
          child: Container(
            width: 154,
            height: 164,
            decoration: BoxDecoration(
              color: const Color(0xFFF7F8FB),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconData,
                  size: 70,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                  child: Text(
                    textCategoria,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 63, 51, 51),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFilledButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Color? buttonColor;

  const CustomFilledButton(
      {super.key, this.onPressed, required this.text, this.buttonColor});

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(10);

    return FilledButton(
        style: FilledButton.styleFrom(
            backgroundColor: buttonColor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: radius,
              bottomRight: radius,
              topLeft: radius,
            ))),
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.textSize,
    this.textColor,
    required this.isBoldFont,
  });

  final String text;
  final double? textSize;
  final Color? textColor;
  final bool isBoldFont;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: textColor,
        fontSize: textSize,
        fontWeight: isBoldFont ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}

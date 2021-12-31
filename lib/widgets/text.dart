import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  final TextAlign? textAlign;
  final double? lineSpacing;
  final TextOverflow textOverflow;
  final FontStyle? fontStyle;
  final int maxLines;

  CustomText({Key? key, required this.text, required this.fontSize, this.lineSpacing, this.textOverflow = TextOverflow.ellipsis,
    this.letterSpacing, this.fontStyle, this.fontWeight, this.color, this.textAlign, this.maxLines = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Text(
      text,
      key: key,
      style: GoogleFonts.lato(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
        height: lineSpacing,
        fontStyle: fontStyle,
      ),
      maxLines: maxLines,
      overflow: textOverflow,
      textAlign: textAlign,
    );
  }
}




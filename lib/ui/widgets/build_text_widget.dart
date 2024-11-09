import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildTextWidget extends StatefulWidget {
  final String text;
  final double? textSize;
  final Color? textColour;
  final FontWeight? fontWeight;

  const BuildTextWidget(
      {super.key,
      required this.text,
      this.textSize,
      this.textColour,
      this.fontWeight});

  @override
  State<BuildTextWidget> createState() => _BuildTextWidgetState();
}

class _BuildTextWidgetState extends State<BuildTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: GoogleFonts.lato(
        textStyle: TextStyle(
          color: widget.textColour ?? Colors.black,
          fontWeight: widget.fontWeight,
          fontSize: widget.textSize ?? 14,
        ),
      ),
    );
  }
}

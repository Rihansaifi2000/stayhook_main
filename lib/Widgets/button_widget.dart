import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatefulWidget {
  final String text;
  final double width;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.width,
  }) : super(key: key);


  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) => Container(
    width: widget.width,
    alignment: Alignment.center,
    padding: const EdgeInsets.all(13),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(
        color: const Color(0xff221F1F),
      ),
    ),
    child: Text(
      widget.text,
      style: GoogleFonts.inter(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: const Color(0xff221F1F),
      ),
    ),
  );
}

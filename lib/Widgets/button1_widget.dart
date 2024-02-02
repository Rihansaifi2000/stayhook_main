import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button1Widget extends StatefulWidget {
  final String text;
  final Color color;
  final Color textColor;
  final double width;

  const Button1Widget(
      {Key? key,
        required this.text,
        required this.color,
        required this.textColor,
        required this.width})
      : super(key: key);

  @override
  State<Button1Widget> createState() => _Button1WidgetState();
}

class _Button1WidgetState extends State<Button1Widget> {
  @override
  Widget build(BuildContext context)=> Container(
    width: widget.width,
    alignment: Alignment.center,
    padding: const EdgeInsets.all(12.5),
    decoration: BoxDecoration(
        color: widget.color,
        borderRadius: const BorderRadius.all(Radius.circular(15))),
    child: Text(
      widget.text,
      style: GoogleFonts.outfit(
        textStyle: TextStyle(
          color: widget.textColor,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}

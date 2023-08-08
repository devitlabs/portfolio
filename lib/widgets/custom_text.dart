import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  final String text;
  final bool isBold;
  final double size;
  final Color color;
  const CustomText({super.key, required this.text, required this.isBold, required this.size, required this.color});

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(color: widget.color,fontSize: widget.size,fontWeight: widget.isBold ? FontWeight.bold:null),
    );
  }
}

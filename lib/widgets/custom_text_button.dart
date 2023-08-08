import 'package:flutter/material.dart';

class CustomTextButton extends StatefulWidget {
  final String text;
  final Function() onTap;
  final Color hoverColor;
  final Color? color;
  const CustomTextButton({super.key, required this.text, required this.onTap, required this.hoverColor, this.color});

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {

  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onHover: (value){
        if (value) {
          setState(() {
            isHovering = true;
          });
        }else {
          setState(() {
            isHovering = false;
          });
        }
      },
      onTap: widget.onTap,
      child: Text(
        widget.text,
        style: TextStyle(color: isHovering ? widget.hoverColor :widget.color,fontSize: 16,fontWeight: isHovering ? FontWeight.bold :null),
      ),
    );
  }
}

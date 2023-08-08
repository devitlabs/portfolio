import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  final String iconsPath;
  final Function()? onTap;
  final double size;
  const CustomIconButton({super.key, required this.iconsPath, required this.size, this.onTap});

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  bool isHovering = false;
  double width = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.onTap,
        onHover: (value){
          if (value) {
            setState(() {
              isHovering = true;
              width = 5;
            });
          }else {
            setState(() {
              isHovering = false;
              width = 0;
            });
          }
        },
        child: Image.asset(widget.iconsPath,width: widget.size+width,fit: BoxFit.fitHeight,)
    );
  }
}

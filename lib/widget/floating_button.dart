import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  IconData icon;
  double size;
  Color bgColor;
  Color iconColor;
  FloatingButton({
    required this.icon,
    required this.size,
    required this.iconColor,
    required this.bgColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: bgColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: size / 2,
      ),
    );
  }
}

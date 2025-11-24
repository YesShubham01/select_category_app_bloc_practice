import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.size,
    this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color, fontWeight: weight),
    );
  }
}

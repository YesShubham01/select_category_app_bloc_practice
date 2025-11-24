import 'package:flutter/material.dart';
import 'package:mock_machine_coding_practise/presentation/custom_widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  final double? textSize;
  final double? radius;
  final FontWeight? weight;
  const CustomButton({
    super.key,
    required this.text,
    this.color,
    this.radius,
    this.textSize,
    this.weight,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 10),
          color: color ?? Colors.blue.shade800,
        ),
        child: Center(
          child: CustomText(
            text: text,
            size: textSize ?? 20,
            weight: weight ?? FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

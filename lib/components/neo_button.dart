import 'package:flutter/material.dart';
import 'package:myapp/constants/app_colors.dart';

class NeoButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color borderColor;
  final Color? fontColor;
  final Color shadowColor;
  final Color strokeColor;
  final double borderRadius;
  final double? width;

  const NeoButton({
    super.key,
    required this.label,
    this.onPressed,
    this.backgroundColor = const Color.fromARGB(255, 245, 237, 172),
    this.borderColor = Colors.black,
    this.fontColor = NeoBrutalismColors.brutalBrown,
    this.shadowColor = Colors.black,
    this.strokeColor = Colors.black,
    this.borderRadius = 14,
    this.width = 250,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: strokeColor, width: 3),
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            offset: Offset(5, 5), // arah bayangan (kanan bawah)
            blurRadius: 0, // biar bayangannya tajam (neobrutal)
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.red,
          elevation: 0, // matikan shadow default
          backgroundColor:
              Colors.transparent, // biar warna ambil dari Container
          shadowColor: Colors.transparent, // matikan shadow default
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16),
          textStyle: const TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 18,
            // fontWeight: FontWeight.w800,
          ),
        ),
        child: Text(label),
      ),
    );
  }
}

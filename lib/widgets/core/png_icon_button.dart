import 'package:flutter/material.dart';

class PngIconButton extends StatelessWidget {
  const PngIconButton(
    this.path, {
    required this.onTap,
    this.size = 28,
    super.key,
  });
  final String path;
  final VoidCallback onTap;
  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: size,
        child: Image.asset(path),
      ),
    );
  }
}
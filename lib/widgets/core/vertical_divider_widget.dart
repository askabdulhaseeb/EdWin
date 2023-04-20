import 'package:flutter/material.dart';

class VerticalDividerWidget extends StatelessWidget {
  const VerticalDividerWidget({this.height, this.width, this.color, super.key});
  final double? width;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 60,
      width: width ?? 1,
      color: color ?? Colors.grey.shade300,
    );
  }
}

import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    required this.imageURL,
    this.size = 32,
    this.placeholder = 'NA',
    super.key,
  });
  final String imageURL;
  final double size;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 1),
        image: DecorationImage(
          image: NetworkImage(imageURL),
        ),
      ),
    );
  }
}

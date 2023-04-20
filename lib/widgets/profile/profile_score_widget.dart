import 'package:flutter/material.dart';

class ProfileScoreWidget extends StatelessWidget {
  const ProfileScoreWidget({
    required this.count,
    required this.title,
    required this.onTap,
    super.key,
  });
  final String count;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w300),
        )
      ],
    );
  }
}

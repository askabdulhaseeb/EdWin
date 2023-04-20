import 'package:flutter/material.dart';

class HomeTextToggleButton extends StatelessWidget {
  const HomeTextToggleButton(
    this.text, {
    required this.isSelected,
    required this.onTap,
    super.key,
  });
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : null,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.black : Colors.grey,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;

  const RoundIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 1),
      ),
      child: Icon(icon, size: 17, color: Colors.white),
    );
  }
}

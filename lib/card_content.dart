import 'package:flutter/material.dart';

const labelStyle = TextStyle(
  color: Color(0xFF8E8E99),
  fontSize: 18.0,
);

class CardContent extends StatelessWidget {
  const CardContent({
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: Color(0xFF8E8E99),
        ),
        SizedBox(height: 15.0),
        Text(
          label.toUpperCase(),
          style: labelStyle,
        )
      ],
    );
  }
}

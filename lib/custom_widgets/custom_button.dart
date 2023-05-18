import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback voidCallback;
  const CustomButton(
      {super.key,
      required this.label,
      required this.voidCallback,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: voidCallback,
        style: ElevatedButton.styleFrom(backgroundColor: color),
        child: Text(
          label.toUpperCase(),
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

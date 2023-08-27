import 'package:flutter/material.dart';

class EnhancedButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const EnhancedButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: 56,
      width: size.width * 0.8,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25))),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

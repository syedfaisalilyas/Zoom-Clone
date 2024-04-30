import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

class custom_Button extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  const custom_Button({super.key, required this.text, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: const BorderSide(color: buttonColor),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 17, color: Colors.white),
        ),
      ),
    );
  }
}

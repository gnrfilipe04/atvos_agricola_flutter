import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPress,
    required this.title,
    required this.bgColor
  }) : super(key: key);

  final void Function() onPress;
  final String title;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return (ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: bgColor,
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: onPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    ));
  }
}

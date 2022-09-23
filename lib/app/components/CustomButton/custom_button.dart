import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.onPress,
      required this.title,
      required this.bgColor,
      this.justify = false,
      this.horizontalPadding = 0})
      : super(key: key);

  final void Function() onPress;
  final String title;
  final Color bgColor;
  final bool justify;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return (ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: bgColor,
        minimumSize: justify ? const Size.fromHeight(50) : null,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: onPress,
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: 16, horizontal: horizontalPadding),
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

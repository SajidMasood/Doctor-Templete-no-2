import 'package:flutter/material.dart';

import 'app_colors.dart';

class MyButton extends StatelessWidget {
  final double width;
  final String title;
  final bool disable; // this used to disable button...
  final Function() onPressed;

  const MyButton(
      {super.key,
      required this.width,
      required this.title,
      required this.disable,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.getStartedColorEnd,
          foregroundColor: Colors.white,
        ),
        onPressed: disable ? null : onPressed,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

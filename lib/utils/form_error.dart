import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';




class FormError extends StatelessWidget {
  final List<String> errors;
  
  const FormError({super.key, required this.errors});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Row formErrorText({required String error}){
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: 14,
          width: 14,
        ),
        SizedBox(
          width: 10,
        ),
        Text(error),
      ],
    );
  }
}
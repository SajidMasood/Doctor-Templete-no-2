import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class CustomSurffixIcon extends StatelessWidget {
  final String svgIcon;

  const CustomSurffixIcon({super.key, required this.svgIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        20,
        20,
        20,
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: 18,
      ),
    );
  }
}

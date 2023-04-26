import 'package:doctor_template_no_2/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: const Body(),
    );
  }
}

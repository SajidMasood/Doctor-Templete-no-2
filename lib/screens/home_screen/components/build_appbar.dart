import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: GestureDetector(
        onTap: () => Scaffold.of(context).openDrawer(),
        child: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
      ),
      actions: [
        InkWell(
          onTap: () {
            debugPrint('____LAL KHAN IS ......Clicked');
            Navigator.pushNamed(context, '/profile');
          },
          child: Container(
            height: 75,
            width: 75,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  AppColors.getStartedColorEnd,
                  AppColors.getStartedColorStart,
                ],
                stops: [0.5, 1],
              ),
            ),
            child: const Center(
              child: Text(
                "C",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:doctor_template_no_2/utils/app_colors.dart';
import 'package:flutter/material.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: _appBar(),
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: AppColors.getStartedColorEnd,
      elevation: 1,
      title: const Text('Privacy'),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
      actions: [
        PopupMenuButton(
          onSelected: (value) {
            // you logic
            Navigator.pushNamed(context, value.toString());
            print('____________________ $value ____________________');
          },
          itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(
                //value: '/home',
                child: Text('Home'),
              ),

              // 2nd
              const PopupMenuItem(
                value: '/about',
                child: Text('About'),
              ),

              // 3rd
              const PopupMenuItem(
                value: '/profile',
                child: Text('Profile'),
              ),
            ];
          },
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 15.0),
        //   child: Icon(Icons.more_vert),
        // ),
      ],
    );
  }
}

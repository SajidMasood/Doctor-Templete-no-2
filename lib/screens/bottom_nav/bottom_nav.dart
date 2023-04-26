import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../about_screen/about_screen.dart';
import '../home_screen/home_screen.dart';
import '../promotion_screen/promotion_screen.dart';
import '../schedule_screen/appointment.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  final _screens = [
    const HomeScreen(),
    const PromotionScreen(),
    AboutScreen(),
    const ScheduleScreen(),
    //BookingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: _screens[_selectedIndex],
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  _bottomNavigationBar() {
    return Container(
      height: 60,

      //margin: EdgeInsets.symmetric(horizontal: 10),
      //height: 80,
      child: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: AppColors.bgColor, //Color(0xFFB4E1DE),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.getStartedColorEnd,
        unselectedItemColor: Colors.black45,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        // required param
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "Promotion",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "About",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note_rounded),
            label: "Appoinment",
          ),
        ],
      ),
    );
  }

  _bottomNavigationBarTest() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: AppColors.getStartedColorEnd,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Row(
          children: [],
        ),
      ),
    );
  }
}

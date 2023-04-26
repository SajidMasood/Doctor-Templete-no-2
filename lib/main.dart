import 'package:doctor_template_no_2/screens/auth_screen/login_screen/login_screen.dart';
import 'package:doctor_template_no_2/screens/booking_screen/booking_screen.dart';
import 'package:doctor_template_no_2/screens/bottom_nav/bottom_nav.dart';
import 'package:doctor_template_no_2/screens/home_screen/profile_screen/profile_screen.dart';
import 'package:doctor_template_no_2/screens/home_screen/profile_screen/update_profile_screen/update_profile.dart';
import 'package:doctor_template_no_2/screens/home_screen/symptom_screen/symptom_screen.dart';
import 'package:doctor_template_no_2/screens/initial_screen/initial_screen.dart';
import 'package:flutter/material.dart';

import 'screens/auth_screen/forgot_screen/forgot_screen.dart';
import 'screens/auth_screen/signup_screen/signup_screen.dart';
import 'screens/home_screen/home_screen.dart';
import 'screens/home_screen/notification_screen/notification_screen.dart';
import 'screens/home_screen/privacy_screen/privacy_screen.dart';
import 'screens/home_screen/topservices_screen/topservices_screen.dart';
import 'utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor Appointment',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
        primarySwatch: Colors.blue,
        appBarTheme: appBarTheme(),
        inputDecorationTheme: inputDecorationTheme(),
      ),
      //home: InitialScreen(),
      initialRoute: '/initial',
      routes: {
        '/bottom': (context) => const BottomNav(),
        '/initial': (context) => const InitialScreen(),
        //auth
        '/login': (context) => const LoginScreen(),
        '/forgot': (context) => const ForgotPassword(),
        '/signup': (context) => const SignupScreen(),
        // Home Screens
        '/home': (context) => const HomeScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/upDateProfile': (context) => const UpdateProfile(),
        '/notification': (context) => const NotificationScreen(),
        '/privacy': (context) => const PrivacyScreen(),
        '/symptoms': (context) => const SymptomScreen(),
        '/topServices': (context) => const TopServicesScreen(),

        // appiontment
        '/bookingScreen': (context) => const BookingScreen(),
      },
    );
  }

  AppBarTheme appBarTheme() {
    return const AppBarTheme(
      color: Colors.transparent,
      //color: AppColors.bgColor,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Color(0XFF8B8B8B),
          fontSize: 18,
        ),
      ),
    );
  }

  InputDecorationTheme inputDecorationTheme() {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: AppColors.getStartedColorEnd),
      gapPadding: 10,
    );
    return InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder,
    );
  }
}

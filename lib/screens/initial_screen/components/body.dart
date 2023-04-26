import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import 'pathPainter.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            //backGround paint ...
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              // child: CustomPaint(
              //   painter: pathPainter(),
              // ),
            ),

            //_________ Text
            Container(
              padding: const EdgeInsets.all(50),
              margin: const EdgeInsets.only(top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Doctor's Appointment in 2 Minutes",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "Finding a doctor was never \nso easy",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),

            //_________ Image
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.2,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Image.asset('assets/images/onBoardDoc.png'),
                ),
              ),
            ),

            //____________ Get Started Button
            Positioned(
              bottom: 0,
              right: 0,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Container(
                  height: 80,
                  width: 200,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      stops: [0.5, 1],
                      colors: [
                        AppColors.getStartedColorEnd,
                        AppColors.getStartedColorStart,
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

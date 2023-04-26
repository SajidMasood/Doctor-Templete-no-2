import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../home_screen/components/pathPainter.dart';
import 'compnents/imageDialog.dart';

class PromotionScreen extends StatelessWidget {
  const PromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: CustomPaint(
                painter: pathPainter(),
              ),
            ),

            //
            Container(
              decoration: const BoxDecoration(
                  // image: DecorationImage(
                  //   image: AssetImage("assets/images/bg9.jpg"),
                  //   fit: BoxFit.cover,
                  // ),
                  ),

              //
              child: SingleChildScrollView(
                child: CarouselSlider(
                  items: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (_) => ImageDialog(
                                        'assets/images/onBoardDoc.png'));
                              },
                              child: Center(
                                child: Image.asset(
                                  'assets/images/onBoardDoc.png',
                                  height:
                                      MediaQuery.of(context).size.height / 1.9,
                                  width: MediaQuery.of(context).size.width,
                                ),
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  const SizedBox(height: 30),
                                  const Text(
                                    "Stay hydrated by drinking plenty of water throughout the day.",
                                    style: TextStyle(
                                        //color: Color.fromARGB(255, 124, 20, 20),
                                        color: AppColors.getStartedColorEnd,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23.0),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              2,
                                          child: const Text(
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.0,
                                                height: 2,
                                              ),
                                              "\"Need a doctor\" is a phrase commonly used to express a desire or urgent requirement for medical attention or assistance. It implies that someone is experiencing physical or mental distress and requires the expertise and intervention of a qualified medical professional. It can be a serious matter and may indicate a medical emergency or a long-term health issue that needs attention. Seeking medical help when needed is essential for maintaining good health and preventing potential complications."))),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

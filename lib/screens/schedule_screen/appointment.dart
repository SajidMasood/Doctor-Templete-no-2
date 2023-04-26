import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../home_screen/components/pathPainter.dart';
import 'components/cancel_schedule.dart';
import 'components/completed_schedule.dart';
import 'components/upcoming_schedule.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  //________________ Var Declaration Section _________
  int _buttonIndex = 0;
  final _scheduleWidgets = [
    // Upcoming Widget
    const UpcomingSchedule(),
    // Completed Widget
    const CompletedSchedule(),
    // Canceled Widget
    const CanceledSchedule(),
  ];
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
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Column Item No 1. Schedule heading
                    // const Padding(
                    //   padding: EdgeInsets.symmetric(horizontal: 15),
                    //   child: Text(
                    //     "Schedule",
                    //     style: TextStyle(
                    //       fontSize: 32,
                    //       fontWeight: FontWeight.w500,
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(height: 20),
                    // Column Item No 2. Container
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF4F6FA),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Row Item No 1. InkWEll
                          InkWell(
                            onTap: () {
                              setState(() {
                                _buttonIndex = 0;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 25),
                              decoration: BoxDecoration(
                                color: _buttonIndex == 0
                                    ? AppColors
                                        .getStartedColorEnd //const Color(0xFF7165D6)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "Upcoming",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: _buttonIndex == 0
                                      ? Colors.white
                                      : Colors.black38,
                                ),
                              ),
                            ),
                          ),
                          // Row Item No 2. InkWEll
                          InkWell(
                            onTap: () {
                              setState(() {
                                _buttonIndex = 1;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 25),
                              decoration: BoxDecoration(
                                color: _buttonIndex == 1
                                    ? AppColors
                                        .getStartedColorEnd //const Color(0xFF7165D6)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "Completed",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: _buttonIndex == 1
                                      ? Colors.white
                                      : Colors.black38,
                                ),
                              ),
                            ),
                          ),

                          // Row Item No 3. InkWEll
                          InkWell(
                            onTap: () {
                              setState(() {
                                _buttonIndex = 2;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 25),
                              decoration: BoxDecoration(
                                color: _buttonIndex == 2
                                    ? AppColors
                                        .getStartedColorEnd //const Color(0xFF7165D6)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "Canceled",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: _buttonIndex == 2
                                      ? Colors.white
                                      : Colors.black38,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Column Item No 3.
                    const SizedBox(height: 30),
                    _scheduleWidgets[_buttonIndex],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

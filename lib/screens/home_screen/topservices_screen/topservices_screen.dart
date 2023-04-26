import 'package:doctor_template_no_2/utils/app_colors.dart';
import 'package:doctor_template_no_2/utils/app_images.dart';
import 'package:flutter/material.dart';

import '../components/pathPainter.dart';

class TopServicesScreen extends StatefulWidget {
  const TopServicesScreen({super.key});

  @override
  State<TopServicesScreen> createState() => _TopServicesScreenState();
}

class _TopServicesScreenState extends State<TopServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: _appBar(),
      body: _body(),
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: AppColors.getStartedColorEnd,
      elevation: 1,
      title: const Text('Top Services'),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
      actions: [
        PopupMenuButton(
          onSelected: (value) {
            // you logic
            // Navigator.pushNamed(context, value.toString());
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

  _body() {
    return SafeArea(
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Hero(
                          tag: 'DemoTag',
                          child: Container(
                            height: 330,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImages.doctor2),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            SizedBox(height: 15),
                            //_________________ Dr name_________________
                            Text(
                              ".",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: AppColors.getStartedColorEnd,
                              ),
                            ),
                            SizedBox(height: 5),
                            //_________________Dr. Profession_________________
                            Text(
                              "..",
                              style: TextStyle(
                                color: AppColors.getStartedColorEnd,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            //Column Child no 4 Call | Chat option .....
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //const SizedBox(height: 20),
                //___________________Main Section ________________
                Container(
                  height: MediaQuery.of(context).size.height / 1.4,
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 20, left: 15),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      //_________________Dr Indo Card ________________________
                      // const Padding(
                      //   padding: EdgeInsets.only(
                      //       top: 15, bottom: 15, left: 0, right: 15),
                      //   child: DoctorInfo(),
                      // ),
                      //_________________about Doctor text____________________
                      const SizedBox(height: 10),
                      const Text(
                        "About Services",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      //_________________ Doctor description_________________
                      const Padding(
                        padding: EdgeInsets.only(right: 15.0),
                        child: Text(
                          'Dr. Richard Tan is an experience Dentist at Sarawak. He is graduated since 2008, and completed his training at Sungai Buloh General Hospital.',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                          ),
                          softWrap: true,
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      const SizedBox(height: 10),
                      //_________________Review|Rating|see All btn_________________
                      Row(
                        children: [
                          // row child no 1
                          const Text(
                            "Reviews",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 10),
                          // row child no 2...
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          // row child no 3.....
                          const Text(
                            "4.9",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          // row child no 4...
                          const SizedBox(width: 5),
                          const Text(
                            "(124)",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xFF7165D6),
                            ),
                          ),
                          // spacer align next widget to the end of row
                          const Spacer(),
                          // row child no  5...
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "See All",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xFF7165D6),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //_________________ ListView.Builder _______________
                      //_________________ Location_________________
                      const SizedBox(height: 10),
                      const Text(
                        "Location",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      ListTile(
                        leading: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Color(0xFFF0EEFA),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.location_on,
                            color: Color(0xFF7165D6),
                            size: 30,
                          ),
                        ),
                        title: const Text(
                          "New York, Medical Center",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: const Text(
                          "address line of the medical center,",
                        ),
                      ),
                      // _________________ End Location _______________
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _bottomNavBar() {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 130,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 2,
          ),
        ],
      ),
      // Container child
      child: Column(
        children: [
          // Column Item no 1 consultant price ...................
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Row Item No 1......
              const Text(
                "Consultation Price",
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              // Row Item No 2......
              const Text(
                "\$100",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          // Column item no 2 Book Appointment btn
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/bookingScreen');
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xFF7165D6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "Book Appointment",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

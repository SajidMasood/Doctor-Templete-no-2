import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../components/pathPainter.dart';

class SymptomScreen extends StatefulWidget {
  const SymptomScreen({super.key});

  @override
  State<SymptomScreen> createState() => _SymptomScreenState();
}

class _SymptomScreenState extends State<SymptomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: _appBar(),
      body: _body(),
      bottomNavigationBar: _bottomNavBar(),
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
                //const SizedBox(height: 50),
                //___________________Header Section ________________
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(height: 15),
                            //_________________ Dr name_________________
                            const Text(
                              "Cough",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                //color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 5),
                            //_________________Dr. Profession_________________
                            const Text(
                              "Therapist",
                              style: TextStyle(
                                //color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 15),
                            //_________________ Degree | Qualification________
                            SizedBox(
                              //width: Config.widthSize * 0.75,
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: const Text(
                                'A cough is a reflex action to clear your airways of mucus and irritants such as dust or smoke. It is rarely a sign of anything serious. Most coughs clear up within 3 weeks and dont require any treatment. A dry cough means its tickly and doesnt produce any phlegm (thick mucus).',
                                style: TextStyle(
                                  //color: Colors.white70,
                                  fontSize: 15,
                                ),
                                softWrap: true,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 25),
                            //_________________ Hospital Name ________________
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: const Text(
                                'Sarawak General Hospital',
                                style: TextStyle(
                                  //color: Colors.white70,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                softWrap: true,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            // Column Child no 4 Call | Chat option .....
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   children: [
                            //     // Row Child no 1 Call option with Icon...
                            //     Container(
                            //       padding: EdgeInsets.all(10),
                            //       decoration: BoxDecoration(
                            //         color: Color(0xFF9F97E2),
                            //         shape: BoxShape.circle,
                            //       ),
                            //       child: Icon(
                            //         Icons.call,
                            //         color: Colors.white,
                            //         size: 25,
                            //       ),
                            //     ),
                            //     SizedBox(width: 20),
                            //     // Row Child no 1 Chat option with Icon...
                            //     Container(
                            //       padding: EdgeInsets.all(10),
                            //       decoration: BoxDecoration(
                            //         color: Color(0xFF9F97E2),
                            //         shape: BoxShape.circle,
                            //       ),
                            //       child: Icon(
                            //         CupertinoIcons.chat_bubble_text_fill,
                            //         color: Colors.white,
                            //         size: 25,
                            //       ),
                            //     ),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                //___________________Main Section ________________
                Container(
                  height: MediaQuery.of(context).size.height / 1.4,
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 20, left: 15),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
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
                        "About Doctor",
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

  AppBar _appBar() {
    return AppBar(
      backgroundColor: AppColors.getStartedColorEnd,
      elevation: 1,
      title: const Text('Symptoms'),
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
                color: AppColors.getStartedColorEnd,
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

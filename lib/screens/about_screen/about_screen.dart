import 'package:doctor_template_no_2/utils/app_images.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_text.dart';
import '../home_screen/components/pathPainter.dart';
import 'components/body.dart';
import 'components/doctor_details.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  List imgs = [
    AppImages.comments,
    AppImages.doctor1,
    AppImages.profile,
    AppImages.doctor2,
  ];

  List drNames = [
    "Dr. Naila Mehsud",
    "Dr. Fadia Noor",
    "Dr. Sajid Abdali",
    "Dr. Muhammad Taha",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      //body: Body(),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: CustomPaint(
                  painter: pathPainter(),
                ),
              ),

              //___________ ...
              Container(
                //height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.only(top: 50, left: 0, right: 0),
                //color: Colors.amberAccent,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 50),
                      //___________________Header Section ________________
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Stack(
                          children: [
                            // Stack Child No 1 back press and menu icons.............

                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //   children: [
                            //     // Row Child No 1 back press........
                            //     InkWell(
                            //       onTap: () {
                            //         // back press............
                            //         Navigator.pop(context);
                            //       },
                            //       child: Icon(
                            //         Icons.arrow_back_ios_new,
                            //         color: Colors.white,
                            //         size: 25,
                            //       ),
                            //     ),
                            //     // Row Child no 2 menu icon ............
                            //     InkWell(
                            //       onTap: () {
                            //         //Navigator.pop(context);
                            //       },
                            //       child: Icon(
                            //         Icons.more_vert,
                            //         color: Colors.white,
                            //         size: 25,
                            //       ),
                            //     ),
                            //   ],
                            // ),

                            //_________________ Stack Child no 2_________________
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  //_________________circle image _________________
                                  const CircleAvatar(
                                    radius: 65,
                                    backgroundImage:
                                        AssetImage(AppImages.doctor1),
                                    backgroundColor: Colors.white,
                                  ),
                                  const SizedBox(height: 15),
                                  //_________________ Dr name_________________
                                  const Text(
                                    "Dr. Doctor Name",
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
                                    width: MediaQuery.of(context).size.width *
                                        0.75,
                                    child: const Text(
                                      'MBBS (International Medical University, Malaysia), MRCP (Royal Collage of Physicians, United Kingdom)',
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
                                    width: MediaQuery.of(context).size.width *
                                        0.75,
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
                        //height: MediaQuery.of(context).size.height / 1.4,
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
                            const Padding(
                              padding: EdgeInsets.only(
                                  top: 15, bottom: 15, left: 0, right: 15),
                              child: DoctorInfo(),
                            ),
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
                            SizedBox(
                              height: 160,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: const EdgeInsets.all(10),
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        const BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 4,
                                          spreadRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          1.4,
                                      child: Column(
                                        children: [
                                          // column child no 1 Dr card...................
                                          ListTile(
                                            leading: CircleAvatar(
                                              radius: 25,
                                              backgroundImage:
                                                  AssetImage(imgs[index]),
                                            ),
                                            title: Text(
                                              //"Dr.Doctor Name",
                                              "${drNames[index]}",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            subtitle: const Text("1 day ago"),
                                            // rating.........
                                            trailing: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                // row child no 1 star icon
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                                // row child no 2 rating 4.9
                                                const Text(
                                                  "4.9",
                                                  style: TextStyle(
                                                    color: Colors.black54,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          // column child no 2 ............
                                          const SizedBox(height: 5),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Text(
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              "Many thanks to ${drNames[index]}. He is a great and professional doctor",
                                              style: const TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            //_________________ Location_________________
                            const SizedBox(height: 10),

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
                            const SizedBox(height: 10),
                            //_________________ End Location _______________
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
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
              children: const [
                // Row Item No 1......
                Text(
                  "Consultation Price",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                // Row Item No 2......
                Text(
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
                debugPrint('Book Appointment ______ here');
                Navigator.of(context).pushNamed('/bookingScreen');
              },
              child: Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  decoration: BoxDecoration(
                    color:
                        AppColors.getStartedColorEnd, //const Color(0xFF7165D6),
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
            ),
          ],
        ),
      ),
    );
  }
}

//_______________________________________________
class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        InfoCard(lable: 'Patients', value: '109'),
        SizedBox(width: 15),
        InfoCard(lable: 'Experiences', value: '10 Years'),
        SizedBox(width: 15),
        InfoCard(lable: 'Rating', value: '4.6'),
      ],
    );
  }
}

class InfoCard extends StatelessWidget {
  final String lable;
  final String value;
  const InfoCard({super.key, required this.lable, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.getStartedColorEnd,
        ),
        child: Column(
          children: [
            Text(
              lable,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

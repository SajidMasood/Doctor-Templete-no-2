import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/app_colors.dart';
import 'build_appbar.dart';
import 'build_listview.dart';
import 'category_box.dart';
import 'pathPainter.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List servicesName = [
    "Aesthetics",
    "Anti-Aging",
    "Hair Restoration",
    "Men's Wellness ",
    "Women's Wellness",
  ];
  List servicesImgs = [
    "image3.png",
    "image2.png",
    "image1.png",
    "image4.png",
    "image5.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          //___________ background paint...
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: CustomPaint(
              painter: pathPainter(),
            ),
          ),

          //___________ ...
          Container(
            padding: const EdgeInsets.only(top: 10, left: 0, right: 0),
            //color: Colors.amber,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const BuildAppBar(),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 14, right: 10, top: 25),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //__________ category text...
                        Container(
                          child: const Text(
                            "Categories",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 15),
                        //__________ category box
                        SingleChildScrollView(
                          padding: const EdgeInsets.only(bottom: 5),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              CategoryBox(
                                title: "Cough",
                                icon: FontAwesomeIcons.headSideCough,
                                color: Colors.red,
                              ),
                              CategoryBox(
                                title: "Snuffle",
                                icon: FontAwesomeIcons.heartPulse,
                                color: Colors.blue,
                              ),
                              CategoryBox(
                                title: "Fiver",
                                icon: FontAwesomeIcons.lungs,
                                color: Colors.purple,
                              ),
                              CategoryBox(
                                title: "Temperature",
                                icon: FontAwesomeIcons.temperatureHigh,
                                color: Colors.green,
                              ),
                              CategoryBox(
                                title: "Cold",
                                icon: FontAwesomeIcons.personPregnant,
                                color: Colors.cyan,
                              ),
                              CategoryBox(
                                title: "Dental",
                                icon: FontAwesomeIcons.teeth,
                                color: Colors.pinkAccent,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        //__________ main Image
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(20),
                          height: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/main.jpg"),
                                fit: BoxFit.cover,
                              )),
                        ),
                        //__________
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          "Top Services",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 15),

                        // new trying
                        BuildListViewBuilder(
                            servicesImgs: servicesImgs,
                            servicesName: servicesName)

                        //____________
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

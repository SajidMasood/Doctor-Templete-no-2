import 'package:doctor_template_no_2/utils/app_images.dart';
import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/my_input_field.dart';
import '../../components/pathPainter.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: _appBar(),
      body: _body(),
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: AppColors.getStartedColorEnd,
      elevation: 1,
      title: const Text('Edit Profile'),
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
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 50),
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: const Image(
                            image: AssetImage(AppImages.doctor1),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF7165D6),
                          ),
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),

                  //
                  const SizedBox(
                    height: 20,
                  ),
                  Form(
                    child: Column(
                      children: [
                        const MyInputField(
                          title: 'First Name',
                          hint: 'Enter Your First Name',
                          icon: Icons.person,
                        ),
                        const MyInputField(
                          title: 'Last Name',
                          hint: 'Enter Your Last Name',
                          icon: Icons.person_add,
                        ),
                        const MyInputField(
                          title: 'Email Address',
                          hint: 'Enter Your Email',
                          icon: Icons.mark_email_read,
                        ),
                        const MyInputField(
                          keyboardType: true,
                          title: 'Phone Number',
                          hint: 'Enter Your Phone Number',
                          icon: Icons.phone_callback,
                        ),
                        const MyInputField(
                          title: 'Password',
                          hint: 'Enter New Password',
                          icon: Icons.lock_person_sharp,
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        // ------------------------button-------------
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: Material(
                              color: AppColors.getStartedColorEnd,
                              borderRadius: BorderRadius.circular(10),
                              child: InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (context) => LoginScreen(),
                                  //     ));
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 0),
                                  child: Center(
                                    child: Text(
                                      "Submit",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
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

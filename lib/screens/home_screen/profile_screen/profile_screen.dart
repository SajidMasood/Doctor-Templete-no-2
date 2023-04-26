import 'package:doctor_template_no_2/utils/app_images.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../components/pathPainter.dart';
import 'components/profile_menu_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
      title: const Text('Profile'),
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
              child: Column(
                children: [
                  //__________________ Stack____________________________
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
                            Icons.edit,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  //__________________End Stack____________________________
                  const SizedBox(height: 10),
                  Text(
                    'User Name ',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'abc@gmail.com',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  const SizedBox(height: 20),
                  //__________________Edit Profile Button___________________
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.getStartedColorEnd,
                        side: BorderSide.none,
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/upDateProfile');
                      },
                      child: const Text('Edit Profile'),
                    ),
                  ),
                  const SizedBox(height: 30),

                  //__________________ Divider ____________________________
                  const Divider(),
                  const SizedBox(height: 10),
                  //__________________Start menu____________________________
                  ProfileMenuWidget(
                    boxColor: Colors.deepPurple.shade100,
                    icon: Icons.notifications_none_outlined,
                    title: 'Notifications',
                    iconColor: Colors.deepPurple,
                    onPress: () {
                      Navigator.pushNamed(context, '/notification');
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ProfileMenuWidget(
                      title: 'Privacy',
                      icon: Icons.privacy_tip_outlined,
                      onPress: () {
                        Navigator.pushNamed(context, '/privacy');
                      },
                      boxColor: Colors.indigo.shade100,
                      iconColor: Colors.indigo),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  // ProfileMenuWidget(
                  //   title: 'About Us',
                  //   icon: Icons.info_outline_rounded,
                  //   onPress: () {
                  //     Navigator.pushNamed(context, '/about');
                  //   },
                  //   boxColor: Colors.orange.shade100,
                  //   iconColor: Colors.orange,
                  // ),
                  ProfileMenuWidget(
                    boxColor: Colors.redAccent.shade100,
                    icon: Icons.logout,
                    title: 'Log Out',
                    iconColor: Colors.redAccent,
                    onPress: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    endIcon: false,
                    textColor: Colors.red,
                  ),
                  //__________________End menu____________________________
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

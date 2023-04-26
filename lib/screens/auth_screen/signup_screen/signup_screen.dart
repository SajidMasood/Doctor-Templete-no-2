import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/constants.dart';
import '../../initial_screen/components/pathPainter.dart';
import '../login_screen/login_screen.dart';
import 'component/sign_up_form.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: _appBar(context),
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
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.04), // 4%
                      Text("Register Account", style: headingStyle),
                      const Text(
                        "Complete your details or continue \nwith social media",
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.08),
                      const SignUpForm(),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.08),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocalCard(
                            icon: "assets/icons/google-icon.svg",
                            press: () {
                              debugPrint('________GOOGLE________');
                            },
                          ),
                          SocalCard(
                            icon: "assets/icons/facebook-2.svg",
                            press: () {
                              debugPrint('________FACEBOOK________');
                            },
                          ),
                          SocalCard(
                            icon: "assets/icons/twitter.svg",
                            press: () {
                              debugPrint('________TWITTER________');
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'By continuing your confirm that you agree \nwith our Term and Condition',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.caption,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: const Icon(
          Icons.arrow_back,
          color: AppColors.getStartedColorEnd,
        ),
      ),
      title: const Text(
        "Sign Up",
        style: TextStyle(color: AppColors.getStartedColorEnd),
      ),
    );
  }
}

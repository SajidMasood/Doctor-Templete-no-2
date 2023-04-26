import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import '../../../utils/app_text.dart';
import 'doctor_details.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            topImage(),
            Container(
              decoration: BoxDecoration(
                //color: AppColors.dateBgColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr. Gilang Segara Bening",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            style: Theme.of(context).textTheme.titleMedium,
                            children: [
                              const TextSpan(text: "Heart"),
                              const TextSpan(text: '  •  '),
                              const TextSpan(text: 'LRH Peshawar'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                        'Dr. Gilang Segara Bening is one of the best doctors in the LRH Peshaware. He has saved more than 1000 patients in the past 3 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule. '),
                    SizedBox(height: 20),
                    const DoctorDetails(),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        // Container(
                        //   height: 56,
                        //   width: 56,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(10.0),
                        //     color: AppColors.blue,
                        //   ),
                        //   child: Image.asset(
                        //     AppImages.comments,
                        //     color: Colors.white,
                        //   ),
                        // ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            height: 56,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: AppColors.getStartedColorEnd,
                            ),
                            child: Center(
                              child: Text(
                                AppText.makeAppointment,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox topImage() {
    return SizedBox(
      height: 350,
      child: Stack(
        children: [
          Hero(
            tag: "doctor-hero", //-${doctorInformationModel.id}",
            child: Container(
              height: 350,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.doctor1
                      //doctorInformationModel.image,
                      ),
                  fit: BoxFit.cover,
                ),
              ),
              //child: const SizedBox(height: 20),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          //   child: CustomAppBar(
          //     backButton: true,
          //     profile: false,
          //     icon: Icons.arrow_back_ios_new_rounded,
          //   ),
          // ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_text.dart';
import 'detail_info.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 100,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          DetailInfo(
            text: AppText.experience,
            number: '3',
            subtitle: ' yr',
          ),
          VerticalDivider(
            indent: 20,
            endIndent: 20,
            thickness: 1,
            color: AppColors.textGrey,
          ),
          DetailInfo(
            text: AppText.patient,
            number: '1121',
            subtitle: ' ps',
          ),
          VerticalDivider(
            indent: 20,
            endIndent: 20,
            thickness: 1,
            color: AppColors.textGrey,
          ),
          DetailInfo(
            text: AppText.rating,
            number: '5.0',
          ),
        ],
      ),

    );
  }
}
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class DetailInfo extends StatelessWidget {
  final String text;
  final String number;
  final String? subtitle;
  const DetailInfo({
    super.key,
    required this.text,
    required this.number,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: number,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: AppColors.blue,
                    ),
              ),
              TextSpan(
                text: subtitle,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: AppColors.textGrey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/app_components/animated_linear_progress.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';
import 'package:haseeb_portfolio/constants/app_strings.dart';

class ProgramingLanguage extends StatelessWidget {
  const ProgramingLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(AppStrings.programmingLanguage,
              style: Theme.of(context).textTheme.titleSmall),
        ),
        AnimatedLinearProgress(label: AppStrings.dart,percentage: AppStrings.zeroPointEight,),
        AnimatedLinearProgress(label: AppStrings.swift,percentage: AppStrings.zeroPointThree,),
        AnimatedLinearProgress(label: AppStrings.java,percentage: AppStrings.zeroPointFour,),
        AnimatedLinearProgress(label: AppStrings.python,percentage: AppStrings.zeroPointFour,),

      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/app_components/animated_language_info.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';
import 'package:haseeb_portfolio/constants/app_strings.dart';

class LaguageInfo extends StatelessWidget {
  const LaguageInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
        child: Text(AppStrings.language,
        style: Theme.of(context).textTheme.titleSmall),
        ),
        Row(
          children: [
            Expanded(child: AnimatedLanguageInfo(label: AppStrings.english,percentage: AppStrings.zeroPointEight,)),
            const SizedBox(width: defaultPadding,),
            Expanded(child: AnimatedLanguageInfo(label: AppStrings.urdu,percentage: AppStrings.zeroPointNine,)),
            const SizedBox(width: defaultPadding,),
            Expanded(child: AnimatedLanguageInfo(label: AppStrings.pashto,percentage: AppStrings.one,)),
          ],
        ),
      ],
    );
  }
}

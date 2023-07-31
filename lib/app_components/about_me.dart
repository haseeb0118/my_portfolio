import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';
import 'package:haseeb_portfolio/constants/app_strings.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: defaultPadding/2),
          child: Text(AppStrings.aboutMe,
              style: Theme.of(context).textTheme.titleSmall),
        ),
        Text(AppStrings.aboutMeParagraph),
      //  SizedBox(height: defaultPadding,)
        ]
    );
  }
}

import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';
import 'package:haseeb_portfolio/constants/app_strings.dart';
import 'package:haseeb_portfolio/widget/custom_button.dart';

class DownloadCV extends StatelessWidget {
  const DownloadCV({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: CustomButton(
            btnTitle: AppStrings.previewCV,
            onPressed: (){},
            btnColor: secondaryColor,
            btnIcon: Icons.remove_red_eye_outlined,

          ),
        ),
        CustomButton(
          btnTitle: AppStrings.downloadCV,
          onPressed: (){},
          btnColor: secondaryColor,
          btnIcon: Icons.download_outlined,

        ),
      ],
    );
  }
}

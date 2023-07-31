import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/app_components/flutter_rich_text.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';
import 'package:haseeb_portfolio/constants/app_strings.dart';
import 'package:haseeb_portfolio/responsive.dart';

class AnimatedKitText extends StatelessWidget {
  const AnimatedKitText({super.key});

  @override
  Widget build(BuildContext context) {
    return   DefaultTextStyle(style: Theme.of(context).textTheme.titleMedium!,
        child: Row(
          children: [
            if(!Responsive.isMobileLarge(context))
             const FlutterRichText(),
            if(!Responsive.isMobileLarge(context))
              const SizedBox(width: defaultPadding/2,),
            const Text(AppStrings.iBuildTxt,),
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(AppStrings.fenixAppAppUi,
                  speed: const Duration(milliseconds: 60),
                ),
                TyperAnimatedText(AppStrings.myAwesomeSkillApp,
                  speed: const Duration(milliseconds: 60),
                ),
                TyperAnimatedText(AppStrings.transporterVendorApp,
                  speed: const Duration(milliseconds: 60),
                ),
                TyperAnimatedText(AppStrings.transporterCustomerApp,
                  speed: const Duration(milliseconds: 60),
                ),
                TyperAnimatedText(AppStrings.owomiMarchandApp,
                  speed: const Duration(milliseconds: 60),
                ),
                TyperAnimatedText(AppStrings.foodDeliveryApp,
                    speed: const Duration(milliseconds: 60)
                ),
              ],
            ),
            if(!Responsive.isMobileLarge(context)) const SizedBox(width: defaultPadding/2,),
            if(!Responsive.isMobileLarge(context))  const FlutterRichText(),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/responsive.dart';

import '../constants/app_color.dart';
import '../constants/app_images.dart';
import '../constants/app_strings.dart';
import 'animated_kit.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(AppImages.bgImage,
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.66),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                Text(AppStrings.amazingArt,
                  style: Responsive.isDesktop(context) ?  Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ) : Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                if(Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding/2,),
                const AnimatedKitText(),
                const SizedBox(height: defaultPadding,),
                if(!Responsive.isMobileLarge(context))
                ElevatedButton(onPressed: (){},
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding * 2,
                            vertical: defaultPadding),
                        backgroundColor: primaryColor
                    ),
                    child: const Text(AppStrings.exploreNow,
                      style: TextStyle(color: darkColor),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

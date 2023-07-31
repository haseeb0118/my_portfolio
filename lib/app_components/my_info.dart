import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/constants/app_images.dart';

import '../constants/app_strings.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(aspectRatio: 1.23,
      child: Container(
        color: const Color(0xFF242430),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(flex: 2,),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(AppImages.myPic),
            ),
            const Spacer(),
            Text(AppStrings.myName,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Text(
              "${AppStrings.flutter} ${AppStrings.developer}",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                height: 2,
              ),
            ),
            const Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}

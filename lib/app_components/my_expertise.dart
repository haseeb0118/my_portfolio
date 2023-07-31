import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';
import 'package:haseeb_portfolio/constants/app_images.dart';
import 'package:haseeb_portfolio/constants/app_strings.dart';

class MyExpertise extends StatelessWidget {
  const MyExpertise({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(AppStrings.expertise,
              style: Theme.of(context).textTheme.titleSmall),),
        buildBulletWidget()
      ],
    );
  }


  Widget buildBulletWidget(){
    return Column(
      children: List.generate(
          AppStrings.myExpertiseList.length, (index) => Padding(
            padding: const EdgeInsets.only(bottom: defaultPadding/2),
            child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Padding(
              padding:  EdgeInsets.only(top : 5.0),
              child: SvgPicture.asset(AppImages.checkIcon,
              height: 10,
                width: 10,
              )
            ),
            SizedBox(width: defaultPadding/2,),
            Expanded(
              child: Text(AppStrings.myExpertiseList[index].title,
              ),
            ),
        ],
      ),
          )
      )
    );



  }
}



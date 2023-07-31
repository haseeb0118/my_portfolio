import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/app_components/experience_details.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';
import 'package:haseeb_portfolio/constants/app_strings.dart';

class MyEducationBanner extends StatelessWidget {
  const MyEducationBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding,horizontal: defaultPadding),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding,horizontal: defaultPadding),

        decoration: BoxDecoration(
          color: const Color(0xFF242430),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.5,
              blurRadius: 0.5,
            ),

          ],
          border: Border.all(
              color:  Colors.white,
              style: BorderStyle.solid,
              width: 0.1
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.education,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
            const SizedBox(height: defaultPadding,),
            ExperienceDetails(
                designation: AppStrings.bcs,
                rchText1: AppStrings.uop,
                rchText2: "${AppStrings.peshawar}, ${AppStrings.pakistan}",
                startingDate: AppStrings.sep2016,
                endingDate: AppStrings.may2021),
            const SizedBox(height: defaultPadding,),
            ExperienceDetails(
                designation: AppStrings.preEngineering,
                rchText1: AppStrings.sscr,
                rchText2: "${AppStrings.mardan}, ${AppStrings.pakistan}",
                startingDate: AppStrings.twentyFourteen,
                endingDate: AppStrings.twentySixteen),
            const SizedBox(height: defaultPadding,),
            ExperienceDetails(
                isLast: true,
                designation: AppStrings.ssc,
                rchText1: AppStrings.scar,
                rchText2: "${AppStrings.mardan}, ${AppStrings.pakistan}",
                startingDate: AppStrings.twentyTwelve,
                endingDate: AppStrings.twentyFourteen),
            const SizedBox(height: defaultPadding,),
          ],
        ),
      ),
    );
  }
}

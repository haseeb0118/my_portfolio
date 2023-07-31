import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/app_components/experience_details.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';
import 'package:haseeb_portfolio/constants/app_strings.dart';

class MyExperienceBanner extends StatelessWidget {
  const MyExperienceBanner({super.key});

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
            Text(AppStrings.myExperience,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
            const SizedBox(height: defaultPadding,),
            ExperienceDetails(
                designation: "${AppStrings.associate} ${AppStrings.flutter} ${AppStrings.engineer}",
                rchText1: AppStrings.pkTeam,
                rchText2: "${AppStrings.islamabad}, ${AppStrings.pakistan}",
                startingDate: AppStrings.firstJuly2023,
                endingDate: AppStrings.inProgress),
            const SizedBox(height: defaultPadding,),
            ExperienceDetails(
                designation: "${AppStrings.flutter} ${AppStrings.app} ${AppStrings.developer}",
                rchText1: AppStrings.codersGlobe,
                rchText2: "${AppStrings.islamabad}, ${AppStrings.pakistan}",
                startingDate: AppStrings.firstJuly2022,
                endingDate: AppStrings.jun2023),
            const SizedBox(height: defaultPadding,),
            ExperienceDetails(
                designation: "${AppStrings.flutter} ${AppStrings.app} ${AppStrings.developer}",
                rchText1: AppStrings.beetechnica,
                rchText2: "${AppStrings.itParkAbbottabad}, ${AppStrings.pakistan}",
                startingDate: AppStrings.firstJan2022,
                endingDate: AppStrings.jun2022),
            const SizedBox(height: defaultPadding,),
            ExperienceDetails(
              isLast: true,
                designation: "${AppStrings.flutter} ${AppStrings.internee}",
                rchText1: AppStrings.codematicsService,
                rchText2: "${AppStrings.itParkAbbottabad}, ${AppStrings.pakistan}",
                startingDate: AppStrings.firsTNov2022,
                endingDate: AppStrings.dec2021),
        ],
      ),
    ),
    );
  }


}

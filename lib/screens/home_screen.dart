import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/app_components/home_banner.dart';
import 'package:haseeb_portfolio/app_components/myExperience.dart';
import 'package:haseeb_portfolio/app_components/my_education.dart';
import 'package:haseeb_portfolio/app_components/my_project.dart';
import 'package:haseeb_portfolio/app_components/my_social_media.dart';
import 'package:haseeb_portfolio/app_components/project_images.dart';
import 'package:haseeb_portfolio/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        MyExperienceBanner(),
        MyProjectsBanner(),
        ProjectImagesBanner(),
        MyEducationBanner(),
        MySocialMediaBanner(),
      ],
    );
  }

}

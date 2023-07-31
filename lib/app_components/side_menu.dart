import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/app_components/about_me.dart';
import 'package:haseeb_portfolio/app_components/address_info.dart';
import 'package:haseeb_portfolio/app_components/download_cv.dart';
import 'package:haseeb_portfolio/app_components/my_expertise.dart';
import 'package:haseeb_portfolio/app_components/my_info.dart';
import 'package:haseeb_portfolio/app_components/programing_language.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';
import 'package:haseeb_portfolio/constants/app_strings.dart';

import 'language_info.dart';
import 'personal_detail.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Drawer(
      child: Column(
        children: [
         MyInfo(),
          Expanded(child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AboutMe(),
                PersonalDetails(),
                LaguageInfo(),
                ProgramingLanguage(),
                MyExpertise(),
                DownloadCV(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}






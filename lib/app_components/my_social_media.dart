import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haseeb_portfolio/app_components/socail_media_icon.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';
import 'package:haseeb_portfolio/constants/app_images.dart';
import 'package:haseeb_portfolio/constants/app_strings.dart';
import 'package:haseeb_portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class MySocialMediaBanner extends StatelessWidget {
  const MySocialMediaBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding,horizontal: defaultPadding),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding,horizontal: defaultPadding),
        decoration: const BoxDecoration(
          color: primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.5,
              blurRadius: 0.5,
            ),
          ],
        ),
        child: Column(
          children: [
            if(!Responsive.isMobileLarge(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: SocialMediaIcon(
                    title: AppStrings.myEmail,
                    isEmailPhoneTxt: true,
                    emailPhoneTxt: AppStrings.email,
                    image: "",
                    iconColor: Colors.blue,
                    textColor: Colors.black,
                  ),
                ),
                const SizedBox(width: defaultPadding/2,),
      SocialMediaIcon(
                isEmailPhoneTxt: true,
                emailPhoneTxt: AppStrings.phone,
                title: AppStrings.myPhoneNum,
                image: "",
                  iconColor: Colors.blue,
                textColor: Colors.black,
              ),
                const SizedBox(width: defaultPadding/2,),
      Expanded(
        child:
        InkWell(
          onTap: () => launch("https://github.com/haseeb0118?tab=repositories"),
          child: SocialMediaIcon(
                    title: AppStrings.gitHub,
                    image: AppImages.githubIcon,
                      iconColor: Colors.black,
                      textColor: Colors.black
                  ),
        ),
      ),
                const SizedBox(width: defaultPadding/2,),
      Expanded(
        child:
        InkWell(
          onTap: () => launch("https://www.linkedin.com/in/haseeb-ur-rahman-288732163"),
          child: SocialMediaIcon(
                    title: AppStrings.linkedIn,
                    image: AppImages.linkedInIcon,
                      iconColor: Colors.blue,
                      textColor: Colors.black,
                  ),
        ),
      ),
              ],
            )
            else   Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SocialMediaIcon(
                  title: AppStrings.myEmail,
                  isEmailPhoneTxt: true,
                  emailPhoneTxt: AppStrings.email,
                  image: "",
                  iconColor: Colors.blue,
                  textColor: Colors.black,
                ),
                const SizedBox(height: defaultPadding,),
                SocialMediaIcon(
                  isEmailPhoneTxt: true,
                  emailPhoneTxt: AppStrings.phone,
                  title: AppStrings.myPhoneNum,
                  image: "",
                  iconColor: Colors.blue,
                  textColor: Colors.black,
                ),
                const SizedBox(height: defaultPadding,),
                InkWell(
                  onTap: () => launch("https://github.com/haseeb0118?tab=repositories"),
                  child: SocialMediaIcon(
                      title: AppStrings.gitHub,
                      image: AppImages.githubIcon,
                      iconColor: Colors.black,
                      textColor: Colors.black
                  ),
                ),
                const SizedBox(height: defaultPadding,),
                InkWell(
                  onTap: () => launch("https://www.linkedin.com/in/haseeb-ur-rahman-288732163"),
                  child: SocialMediaIcon(
                    title: AppStrings.linkedIn,
                    image: AppImages.linkedInIcon,
                    iconColor: Colors.blue,
                    textColor: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

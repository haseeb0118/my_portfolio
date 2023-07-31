import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';
import 'package:haseeb_portfolio/responsive.dart';

class SocialMediaIcon extends StatelessWidget {
  String image, title,emailPhoneTxt;
  Color iconColor,textColor;
  bool isEmailPhoneTxt;

   SocialMediaIcon({required this.image,required this.title,
    this.isEmailPhoneTxt = false, required this.iconColor,
    required this.textColor, this.emailPhoneTxt = ""
  });

  @override
  Widget build(BuildContext context) {
    return
    Row(
      mainAxisAlignment: Responsive.isMobileLarge(context) ? MainAxisAlignment.spaceBetween :
      MainAxisAlignment.end,
      children: [
        isEmailPhoneTxt ?
        Text(emailPhoneTxt,
          style: GoogleFonts.lato(
            fontWeight: FontWeight.bold,
            fontSize:  !Responsive.isMobileLarge(context) ? 16 : 12,
          ), ) :
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5)
          ),
          child: SvgPicture.asset(image,
            color: iconColor,
          ),
        ),
        SizedBox(width: isEmailPhoneTxt ? defaultPadding /2 :   defaultPadding,),

        Text(title,
          style: GoogleFonts.lato(
              fontWeight: FontWeight.bold,
              fontSize:  !Responsive.isMobileLarge(context) ? 16 : 12,
              color: textColor
          ),
        ),
      ],
    );
  }
}

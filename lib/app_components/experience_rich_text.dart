import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';
import 'package:haseeb_portfolio/constants/app_strings.dart';
import 'package:haseeb_portfolio/responsive.dart';

class ExperienceRichText extends StatelessWidget {
  String rchText1,rchText2,rchText3;

  double fontSize;


   ExperienceRichText({this.rchText1 = "",this.rchText2 = '',this.rchText3 = '',
  this.fontSize =  12
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text.rich(
            TextSpan(text: rchText1,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: !Responsive.isMobileLarge(context) ? 15 : 8
                ),
                children: [
                  TextSpan(
                      text : rchText2,
                      style: TextStyle(color: primaryColor,
                          fontSize: !Responsive.isMobileLarge(context) ?  fontSize : 8
                      )
                  ),
                  TextSpan(
                    text : rchText3,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: !Responsive.isMobileLarge(context) ? 15 : 8
                    ),
                  ) ,
                ]
            ),),
      ],
    );
  }
}

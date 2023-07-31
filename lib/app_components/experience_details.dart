import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/app_components/experience_rich_text.dart';
import 'package:haseeb_portfolio/app_components/joining_date.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';
import 'package:haseeb_portfolio/responsive.dart';

class ExperienceDetails extends StatelessWidget {
  String designation,rchText1,rchText2,startingDate,endingDate;
  bool isLast;
   ExperienceDetails({required this.designation,required this.rchText1,
  required this.rchText2,required this.startingDate,required this.endingDate,
      this.isLast = false
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Expanded(
           flex: 4,
           child: Text(designation,
            style:  TextStyle(
                fontSize: !Responsive.isMobileLarge(context) ? 15 : 8,
                fontWeight: FontWeight.bold
            ),
        ),
         ),
        Expanded(
          flex: 6,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top :  !Responsive.isMobileLarge(context) ? defaultPadding/2 : defaultPadding/6 ,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       Icon(Icons.adjust,
                        color: primaryColor,
                        size: !Responsive.isMobileLarge(context) ? 10 : 7,
                      ),
                      const SizedBox(height: defaultPadding/3,),
                  isLast ? const Text("") :
                  Container(
                        height: 50,
                        width: 2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  left: defaultPadding *2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ExperienceRichText(
                        fontSize: !Responsive.isMobileLarge(context) ? 18 : 14,
                        rchText1: rchText1,
                        rchText2: !Responsive.isMobileLarge(context) ? "     |     " : "",
                        rchText3: !Responsive.isMobileLarge(context) ? rchText2 : "",
                      ),
                      if (!Responsive.isMobileLarge(context))
                        const SizedBox(height: defaultPadding/2,)
                      else SizedBox(height: 5,),
                      if(Responsive.isMobileLarge(context))
    Text.rich(
    TextSpan(text: "Location : ${rchText2}",
    style: TextStyle(
    color: Colors.white.withOpacity(0.6),
    fontSize: !Responsive.isMobileLarge(context) ? 15 : 8
    ),
    ),
    ),
                      if(Responsive.isMobileLarge(context))
                        const SizedBox(height: defaultPadding/2,),
                      JoiningDate(startingDate: startingDate,
                          endingDate: endingDate
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: defaultPadding,),
              ],
            ),
            const SizedBox(height: defaultPadding * 2,),
          ],
        ),
        )
      ],
    );
  }
}

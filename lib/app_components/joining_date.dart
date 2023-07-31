import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';

import 'experience_rich_text.dart';

class JoiningDate extends StatelessWidget {
  final String startingDate,endingDate;
   JoiningDate({required this.startingDate,required this.endingDate});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ExperienceRichText(
          rchText1: startingDate,
          rchText2: "  TO  ",
          rchText3: endingDate,
        ),
      ],
    );
  }
}

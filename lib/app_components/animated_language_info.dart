import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/constants/app_strings.dart';

import '../constants/app_color.dart';

class AnimatedLanguageInfo extends StatelessWidget {
  String label;
  double percentage;

  AnimatedLanguageInfo({this.label = '' , this.percentage= 0});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0,end: percentage),
            duration: defaultDuration,
            builder: (context,double value,child) =>
                Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: value,
                      backgroundColor: darkColor,
                      color: primaryColor,
                    ),
                    Center(
                      child: Text("${(value * 100).toInt()}%",
                          style: Theme.of(context).textTheme.titleSmall),
                    ),
                  ],
                ),
          ),
        ),
        const SizedBox(height: defaultPadding/2,),
        Text(label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';

class AnimatedLinearProgress extends StatelessWidget {
  String label;
  double percentage;

  AnimatedLinearProgress({this.label = '', this.percentage = 0.0});


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(tween: Tween<double> (begin: 0,end: percentage),
          duration: defaultDuration, builder: (context,double value,child,) =>
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(label,
                        style: const TextStyle(
                            color: Colors.white
                        ),
                      ),
                      Text("${(value * 100).toInt()}%",
                      )
                    ],
                  ),
                  SizedBox(height: defaultPadding/2,),
                  LinearProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
                ],
              )
      ),
    );
  }
}

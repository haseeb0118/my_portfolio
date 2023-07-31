import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';
import 'package:haseeb_portfolio/constants/app_strings.dart';

class FlutterRichText extends StatelessWidget {
  const FlutterRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return   Text.rich(
        TextSpan(text: "<",
            children: [
              TextSpan(
                  text : AppStrings.flutter,
                  style: TextStyle(color: primaryColor)
              ),
              TextSpan(
                text : ">",
              ),
            ]
        ));
  }
}

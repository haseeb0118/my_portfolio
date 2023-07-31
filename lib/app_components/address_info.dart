
import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';

class AddressInfo extends StatelessWidget {
  String title,subTitle;

  AddressInfo({this.title = '', this.subTitle = ""});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            subTitle,
          ),
        ],
      ),
    );
  }
}
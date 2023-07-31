import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/app_components/address_info.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';
import 'package:haseeb_portfolio/constants/app_strings.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          AddressInfo(title: AppStrings.country,subTitle: AppStrings.pakistan,),
          AddressInfo(title: AppStrings.city,subTitle: AppStrings.islamabad,),
          AddressInfo(title: AppStrings.dob,subTitle: AppStrings.date,),
        ],
      ),
    );
  }
}

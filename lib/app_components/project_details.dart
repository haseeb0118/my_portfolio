import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';

class ProjectDetails extends StatelessWidget {
  final String projectName;
  final String projectDetails;
  const ProjectDetails({required this.projectName,required this.projectDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: const EdgeInsets.symmetric(vertical: defaultPadding,horizontal: defaultPadding),
      decoration: BoxDecoration(
        color: bodyTextColor,
        border: Border.all(
            color:  Colors.white,
            style: BorderStyle.solid,
            width: 0.1
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.white,

          )
        ]
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(projectName,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.black,
                fontWeight: FontWeight.w600
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            Text(projectDetails,
              style: GoogleFonts.lato(
                color: Colors.black
              ),
            ),
            const SizedBox(height: defaultPadding,),
          ],
        ),
      ),
    );
  }
}

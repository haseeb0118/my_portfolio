import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/app_components/project_details.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';
import 'package:haseeb_portfolio/constants/app_strings.dart';
import 'package:haseeb_portfolio/responsive.dart';

class MyProjectsBanner extends StatelessWidget {
  const MyProjectsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding,horizontal: defaultPadding),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding,horizontal: defaultPadding),

        decoration: BoxDecoration(
          color: const Color(0xFF242430),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.5,
              blurRadius: 0.5,
            ),
          ],
          border: Border.all(
              color:  Colors.white,
              style: BorderStyle.solid,
              width: 0.1
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.myProject,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
            const SizedBox(height: defaultPadding,),
             if(Responsive.isMobileLarge(context))
                const Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   ProjectDetails(projectName: AppStrings.fenixApp,
                     projectDetails: AppStrings.fenixAppDetails,
                   ),
    SizedBox(height: defaultPadding,),
    ProjectDetails(projectName: AppStrings.myAwesomeSkillApp,
    projectDetails: AppStrings.myAwesomeSkillDetails,
    ),
                   SizedBox(height: defaultPadding,),
                   ProjectDetails(projectName: AppStrings.transporterVendorCustomer,
                     projectDetails: AppStrings.tranporterAppDetails,
                   ) ,
                   SizedBox(height: defaultPadding,),
                   ProjectDetails(projectName: AppStrings.owomiMarchandApp,
                     projectDetails: AppStrings.owamiMarchandDetails,
                   ),
                   SizedBox(height: defaultPadding,),
                   ProjectDetails(projectName: AppStrings.foodDeliveryApplication,
                     projectDetails: AppStrings.foodDeliveryDetails,
                   ),
                 ],
               )
             else Row(
              children: [
                const Expanded(
                  child: ProjectDetails(projectName: AppStrings.fenixApp,
                  projectDetails: AppStrings.fenixAppDetails,
                  ),
                ),
                const SizedBox(width: defaultPadding,),
                const Expanded(
                  child : ProjectDetails(projectName: AppStrings.myAwesomeSkillApp,
                projectDetails: AppStrings.myAwesomeSkillDetails,
                ),),
                const SizedBox(width: defaultPadding,),
                if(!Responsive.isMobileLarge(context))
                  const Expanded(
                  child : ProjectDetails(projectName: AppStrings.transporterVendorCustomer,
                projectDetails: AppStrings.tranporterAppDetails,
                ) ,
                )
              ],
            ),
            const SizedBox(height: defaultPadding *2 ,),
             if(!Responsive.isMobileLarge(context))
             Row(
              children: [
                if(Responsive.isMobileLarge(context))
                   const Expanded(
                  child : ProjectDetails(projectName: AppStrings.transporterVendorCustomer,
                    projectDetails: AppStrings.tranporterAppDetails,
                  ) ,
                ),
                if(Responsive.isMobileLarge(context))
                const SizedBox(width: defaultPadding,),
                const Expanded(
                  child:
                ProjectDetails(projectName: AppStrings.owomiMarchandApp,
                projectDetails: AppStrings.owamiMarchandDetails,
                ),),
                const SizedBox(width: defaultPadding,),
                if(!Responsive.isMobileLarge(context))
                const Expanded(
                  child:
                ProjectDetails(projectName: AppStrings.foodDeliveryApplication,
                projectDetails: AppStrings.foodDeliveryDetails,
                ),
                ),
                if(!Responsive.isMobileLarge(context) )
                  const Expanded(child: Padding(padding: EdgeInsets.all(100)))
              ],
            ),
            if(Responsive.isMobileLarge(context))
              const SizedBox(height: defaultPadding *2 ,),
            if(!Responsive.isMobileLarge(context))
            Row(
              children: [
                if(Responsive.isMobileLarge(context))
                      const Expanded(child:
                ProjectDetails(projectName: AppStrings.foodDeliveryApplication,
                  projectDetails: AppStrings.foodDeliveryDetails,
                ),
                ),
                const Expanded(child: Padding(padding: EdgeInsets.all(100))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';
import 'package:haseeb_portfolio/constants/app_images.dart';
import 'package:haseeb_portfolio/constants/app_strings.dart';
import 'package:haseeb_portfolio/responsive.dart';

class ProjectImagesBanner extends StatelessWidget {
  const ProjectImagesBanner({super.key});

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
            Text(AppStrings.projectImages,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
            const SizedBox(height: defaultPadding,),
          CarouselSlider(
            options: CarouselOptions(),
            items: AppImages.projectList
                .map((item) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Stack(
                    fit: StackFit.expand,
                    clipBehavior: Clip.none,
                    children: [

                      Container(
              height: 50,
              decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image : DecorationImage(
                        image: NetworkImage(item.image, ),
                          fit: BoxFit.cover
                      ),

              ),
            ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.only(left: defaultPadding/2),
                                height:  !Responsive.isMobileLarge(context) ? 60 : 40,
                                width: MediaQuery.of(context).size.width,
                                decoration:  BoxDecoration(
                                    color: Colors.white.withOpacity(0.6),
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)
                                    ),
                                ),
                                child: Center(
                                  child: Text(item.title,
                                    style : GoogleFonts.lato(
                                        fontSize: !Responsive.isMobileLarge(context)  ? 30 :  15,
                                        fontWeight: FontWeight.bold,
                                        color: primaryColor,
                                    ),
                                  ),
                                ),
                              ),
                        ),
                    ],
                  ),
                ),).toList(),
          ),
          ],
        ),
      ),
    );
  }
}

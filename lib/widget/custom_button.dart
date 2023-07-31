import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';


class CustomButton extends StatelessWidget {
  final String btnTitle;
  final double height;
  final Function onPressed;
  final Color btnColor;
  final IconData btnIcon;
  bool isBtnIcon;

  CustomButton({required this.btnTitle,required this.onPressed, this.btnColor = Colors.transparent,
   this.btnIcon = Icons.add,
   this.isBtnIcon = true,
    this.height = 40,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        height: 40,
        decoration:
        BoxDecoration(
          color:  btnColor,

          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2.0,
              blurRadius: 2.0
            ),
          ],
          border: Border.all(
            color: Colors.white,
            width: 0.2,
            style: BorderStyle.solid
          )
        ) ,
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment.center ,
          children: [
            Text(btnTitle,
            style: const TextStyle(
              color: Colors.white
            ),
            ),
            const SizedBox(width: defaultPadding/2,),
            if(isBtnIcon)
           Icon(btnIcon,
              size: 15,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

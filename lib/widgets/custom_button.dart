import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/constants.dart';

class CustomButton extends StatelessWidget {
  String buttonText;
  Color? buttonColor,textColor;
  double? textSize;
  double? borderRadius,elevation;


  var onTap,border;
  CustomButton({Key? key,required this.buttonText,required this.onTap,this.buttonColor,this.textColor,this.textSize,this.borderRadius,this.elevation,this.border}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation?? cardElevation,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius??circularBorderRadius)),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: buttonColor ?? kGreenColor,borderRadius: BorderRadius.circular(borderRadius??circularBorderRadius,),border: border),
        child: MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius??circularBorderRadius)),
          onPressed: onTap,
          child: Text(buttonText,style:  GoogleFonts.jost( fontSize: textSize??20, fontWeight: FontWeight.w500, color: textColor ?? Colors.white)),
        ),
      ),
    );
  }
}

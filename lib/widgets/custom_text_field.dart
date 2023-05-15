import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  int? maxLines;
  var controller;
  var validator;
  var keyboardType;
  bool? readOnly;
  String? labelText;
  String? hintText;
  bool? isObscured;
  Widget? prefixIcon,suffixIcon;
  int? limitingFormatter;
  var cardFormatter;
  Color? filledColor;
  bool? isFilled;
  Color? borderColor;
  double? borderRadius;
  var hintTextColor,textColor;
  final Function()? onTap;
  final String? Function(String? value)? onChanged;
  CustomTextField({Key? key,this.maxLines,required this.controller,required this.validator,this.keyboardType,this.labelText,this.isObscured,this.prefixIcon,this.suffixIcon,this.limitingFormatter,this.readOnly,this.hintText,this.onTap,this.onChanged, this.cardFormatter,this.filledColor,this.isFilled,this.borderColor,this.hintTextColor,this.borderRadius,this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        inputFormatters: [
          // FilteringTextInputFormatter.allow(cardFormatter??null),
          LengthLimitingTextInputFormatter(limitingFormatter??50),

        ],

        maxLines: maxLines ?? 1,
        readOnly: readOnly??false,
        onTap: onTap,
        onChanged: onChanged,
        controller: controller,
        obscureText: isObscured??false,
        validator: validator,
        cursorColor: Colors.black,
        keyboardType: keyboardType ?? TextInputType.text,
        style: TextStyle(
          color: textColor??Colors.white,
        ),
        decoration: InputDecoration(
          filled: isFilled??true,
          fillColor: filledColor??Colors.black,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelStyle: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: hintTextColor??Colors.white),
          hintStyle: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: hintTextColor??Colors.white),
          isDense: true,
          contentPadding:  EdgeInsets.only(left: 10),
          labelText: labelText,
          hintText: hintText,
          errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(borderRadius??30), borderSide: const BorderSide(color: Colors.red, width: 1)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(borderRadius??30)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(borderRadius??30), borderSide: BorderSide(color: borderColor??Colors.white, width: 0.5)),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(borderRadius??30), borderSide: BorderSide(color: borderColor??Colors.white, width: 0.5)),
        ),
      ),
    );
  }
}




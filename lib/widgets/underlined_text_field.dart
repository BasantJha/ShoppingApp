import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';



class UnderLinedTextField extends StatelessWidget {
  TextEditingController controller;
  String hinText;
  var prefixIconImage;
  var suffixIconImage,maxLength,maxLines,keyBoardType,totalNumberOfInputs;

  UnderLinedTextField({Key? key,required this.controller,required this.hinText,this.prefixIconImage,this.suffixIconImage,this.maxLength,this.maxLines,this.keyBoardType,this.totalNumberOfInputs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      maxLines: maxLines,
      keyboardType: keyBoardType,
      inputFormatters: [
        LengthLimitingTextInputFormatter(totalNumberOfInputs),
      ],
      cursorColor: Colors.black,
      controller: controller,
      style: GoogleFonts.roboto(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        hintText: hinText,
        hintStyle: GoogleFonts.roboto(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.grey[700]),
        prefixIcon: prefixIconImage,
        suffixIcon: suffixIconImage,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black,width: 0.5),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black,width: 1.2),
        ),
      ),
    );
  }
}

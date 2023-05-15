import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/utils/constants.dart';
import 'package:get/get.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: ()=>Get.back(),
            child: Icon(Icons.arrow_back,size: iconSize,color: Colors.black,)),
        centerTitle: true,
        title: Text('About Us',style: GoogleFonts.jost(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.black),),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20),
        shrinkWrap: true,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('assets/required images/aboutUs.png',height: 125,width: double.infinity,fit: BoxFit.fill,)),
          const SizedBox(height: 20,),
          Container(
            width: double.infinity,
            color: Color(0xffF8F8F8),
            padding: EdgeInsets.all(12),
            child: Text("Welcome to Outlet 91 ! My company and its associates provide their services to you subject to the following conditions. My company and its associates provide their services to you subject to the following conditions. My company and its associates provide their services to you subject to the following conditions. My company and its associates provide their services to you subject to the following conditions. My company and its associates provide their services to you subject to the following conditions. My company and its associates provide their services to you subject to the following conditions. My company and its associates provide their services to you subject to the following conditions.",style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.black),)
          ),
          const SizedBox(height: 80,),

        ],
      ),
      bottomNavigationBar: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(child: Image.asset('assets/images/outletLogo.png',height: 40,width: 40,fit: BoxFit.contain,)),
          Center(child: Image.asset('assets/images/outletText.png',height: 20,width: 86,fit: BoxFit.contain,color: Colors.black,)),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }
}

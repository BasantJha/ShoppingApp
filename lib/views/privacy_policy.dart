import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';


class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

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
        title: Text('Privacy Policy',style: GoogleFonts.jost(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.black),),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        shrinkWrap: true,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('assets/required images/privacyPolicy.png',height: 125,width: double.infinity,fit: BoxFit.fill,)),
          const SizedBox(height: 20,),
          Text('we at  Outlet 91, take data privacy and security extremely seriously and work to ensure that we are fully compliant with the various regualtions dealing with privacy.',style: GoogleFonts.jost(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),),
          Text('Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xffA69696)),),
          const SizedBox(height: 15,),
          Text('1. Collection of your information',style: GoogleFonts.jost(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),),

          Text('Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xffA69696)),),

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

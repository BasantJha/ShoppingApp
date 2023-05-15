import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/utils/colors.dart';

import '../utils/constants.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({Key? key}) : super(key: key);

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
        title: Text('FAQs',style: GoogleFonts.jost(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.black),),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          Text('FREQUENTLY ASKED QUESTIONS',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16),),
          const SizedBox(height: 4,),
          Text('UNDER SELLER',style: GoogleFonts.jost(fontSize: 12,fontWeight: FontWeight.w500,color:kYellowColor ),),
          FaqContainer(text: 'Productselling'),
          FaqContainer(text: 'Payments'),
          FaqContainer(text: 'Pickupandtracking'),
          const SizedBox(height: 10,),
          Text('UNDER BUYER',style: GoogleFonts.jost(fontSize: 12,fontWeight: FontWeight.w500,color:kYellowColor ),),
          FaqContainer(text: 'Products'),
          FaqContainer(text: 'Orders'),
          const SizedBox(height: 5,),
          Text('is there a purchase limit for COD purchase ?',style: GoogleFonts.jost(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black),),
          Text('1. Yes. All orders below rs.7500 are eligible for COD.',style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.grey),),
          const SizedBox(height: 20,),
          Text('Why did i receive a partial orders ?',style: GoogleFonts.jost(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black),),
          Text('1. your products are being picked up from different seller. Hence, they will be delivered to you separately.',textAlign: TextAlign.justify,style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.grey),),
          Text('2. you can track your order on the order91.',textAlign: TextAlign.justify,style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.grey),),
          const SizedBox(height: 20,),
          Text('I received a different item form the one that i ordered what should i do?',textAlign: TextAlign.justify,style: GoogleFonts.jost(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black),),
          Text('1. you can request to ‘return’ or ‘exchange’ the product.',textAlign: TextAlign.justify,style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.grey),),
          Text('2. or you can write  to us  and we  will check if there has been confusion form our / delivery partner’s end.',textAlign: TextAlign.justify,style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.grey),),
          const SizedBox(height: 15,),
          FaqContainer(text: 'Payments'),
          FaqContainer(text: 'Return & Refunds'),
          FaqContainer(text: 'Cancellations'),
          const SizedBox(height: 10,),
          Text('GENERAL QUESTIONS',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16),),
          FaqContainer(text: 'General Questions'),
          const SizedBox(height: 30,),
          Center(child: Image.asset('assets/images/outletLogo.png',height: 40,width: 40,fit: BoxFit.contain,)),
          Center(child: Image.asset('assets/images/outletText.png',height: 20,width: 86,fit: BoxFit.contain,color: Colors.black,)),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }
}


class FaqContainer extends StatelessWidget {
  String text;
   FaqContainer({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 10) ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
        border: Border.all(color: Colors.black.withOpacity(0.4),width: 0.6),
      ),
      child: Text(text,style: GoogleFonts.jost(fontWeight: FontWeight.w400,color: Colors.grey[600],fontSize: 12),),
    );
  }
}


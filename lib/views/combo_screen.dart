import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class ComboScreen extends StatelessWidget {
  const ComboScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(onPressed: ()=>Get.back(), icon: Icon(Icons.arrow_back_ios_new,size: iconSize,color: Colors.white,)),
        title: Text('Combos',style: GoogleFonts.jost(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
        titleSpacing: 0,
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.all(20),
        children: [
          Center(
            child: Text('STYLISH CURATED COMBOS',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),),
          ),
          Center(
            child: Text('Experts Advice',style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.black),),
          ),
          const SizedBox(height: 10,),
          Stack(
            children: [
              ClipRRect(
                  borderRadius:BorderRadius.circular(12),
                  child: Image.asset('assets/images/Rectangle 682 (1).png',height: 186,width: double.infinity,fit: BoxFit.cover,)),
              Positioned.fill(
                  top: 99,
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text('sparkels',style: GoogleFonts.allura(fontSize: 70,fontWeight: FontWeight.w900,color: Colors.white),)))
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              Expanded(child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset('assets/images/Rectangle 692.png',height: 99,fit: BoxFit.cover,))),
              const SizedBox(width: 10,),
              Expanded(child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset('assets/images/Rectangle 691.png',height: 99,fit: BoxFit.cover,))),
            ],
          ),
          const SizedBox(height: 15,),
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/images/Rectangle 693.png',height: 287,width:double.infinity,fit: BoxFit.cover,))
        ],
      ),
    );
  }
}

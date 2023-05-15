import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class LucknowiChikanKari extends StatelessWidget {
  const LucknowiChikanKari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(onPressed: ()=>Get.back(), icon: const Icon(Icons.arrow_back_ios_new,size: iconSize,color: Colors.white,)),
        title: Text('Lucknowi Chikankari',style: GoogleFonts.jost(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
        titleSpacing: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 30,
                    width: double.infinity,
                  ),
                  Container(
                    height: 212,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(color: Color(0xff044736),borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        const SizedBox(height: 80,),
                        Text('Lucknow, Uttar pradeshs state Capital, is Known worldwide for its distinctive Chickankari embroidery. Although chikankari work is done worldwide, traditional Lucknow Chikenkari  is distinct because it uses floral eastern and creepers thoughtout the fabrics',style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.white),),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned.fill(
                  top: -0,
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset('assets/images/lucknowi1.png',height: 94,width: 94,fit: BoxFit.contain,))),
            ],
          ),
          const SizedBox(height: 15,),
          Center(child: Text('EXQUISITELY HANDCRAFTED CHIKANKARI',style: GoogleFonts.jost(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black),)),
          Center(child: Text('Range of most covered brand',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black),)),
          const SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/images/Ellipse 9.png',
                      height: 70,
                      width: 70,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      'Kurtas      ',
                      style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/Ellipse 10.png',
                      height: 70,
                      width: 70,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      '    Kurta Sets',
                      style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
                    )
                  ],
                ),
              ),

            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/images/Ellipse 11.png',
                      height: 70,
                      width: 70,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      'Sarees      ',
                      style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/anarkali.png',
                      height: 70,
                      width: 70,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      '     Anarkali',
                      style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
                    )
                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

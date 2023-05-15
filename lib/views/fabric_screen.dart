import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/views/lucknowi_chikankari.dart';

import '../utils/constants.dart';

class FabricScreen extends StatelessWidget {
  FabricScreen({Key? key}) : super(key: key);

  List imageSrc =['assets/images/fabric1.png','assets/images/fabric2.png','assets/images/fabric3.png','assets/images/fabric4.png'];
  List firstText =['JAIPURI HANDBLOCKS','LUCKNOWI CHIKANKARI','LEHRIYA AND BANDHHEJ','KUNDAN TREASURER'];
  List secondText =['Remagining the art of jaipuri hand Block printing','keeping alive the age-old art of lucknowi chikankari','colorful and graceful prints that are time-honoured ','Heirloom pieces in royal designs that can embellish any look'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(onPressed: ()=>Get.back(), icon: Icon(Icons.arrow_back_ios_new,size: iconSize,color: Colors.white,)),
        title: Text('Fabric',style: GoogleFonts.jost(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
        titleSpacing: 0,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 20,),
          Align(
            alignment: Alignment.center,
            child: Text('ON POPULAR DEMAND',style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.black),),
          ),
          Align(
            alignment: Alignment.center,
            child: Text('RANGE OF MOST COVETED BRANDS',style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xffAE172E)),),
          ),const SizedBox(height: 5,),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                index==1?Get.to(()=>LucknowiChikanKari()):null;
              },
              child: SizedBox(
                height: 136,
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius:BorderRadius.circular(12),
                        child: Image.asset(imageSrc[index],height: 114,width: double.infinity,fit: BoxFit.cover,)),
                    Positioned.fill(
                        top: 90,
                        bottom: -5,
                        child: Align(
                          alignment:Alignment.center,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Column(
                                children: [
                                  Text(firstText[index],style: GoogleFonts.jost(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),),
                                  Text(secondText[index],style: GoogleFonts.jost(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.grey[700]),),
                                ],
                              ),
                            ),
                    ),
                        ))
                  ],
                ),
              ),
            );
          }, separatorBuilder: (context,index){
            return SizedBox(height: 20,);
          }, itemCount: imageSrc.length),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }
}

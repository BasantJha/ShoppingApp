import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/views/combo_screen.dart';
import 'package:outlet_91/views/fabric_screen.dart';

import '../utils/constants.dart';

class IndianWear extends StatelessWidget {
  const IndianWear({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(onPressed: ()=>Get.back(), icon: Icon(Icons.arrow_back_ios_new,size: iconSize,color: Colors.white,)),
        title: Text('Indian Wear',style: GoogleFonts.jost(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
        titleSpacing: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('FILTER',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 11,color: Colors.black),),
                Image.asset('assets/icons/filterr.png',height: 12,width: 12,fit: BoxFit.contain,)
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Stack(
            children: [
              Image.asset('assets/images/6666 1.png',height: 179,width: double.infinity,fit: BoxFit.cover,),
              Positioned(
                  top: 50,
                  right: 20,
                  child: Column(
                    children: [
                      Text("On Popular Demand ",style: GoogleFonts.jost(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black),),
                      Text("Range of\nmost coveted brand",textAlign: TextAlign.center,style: GoogleFonts.jost(fontSize: 12,fontWeight: FontWeight.w600,color: Color(0xffAE172E)),),
                      Text("The hottest trends for spring Summer 23",style: GoogleFonts.jost(fontSize: 8,fontWeight: FontWeight.w400,color: Colors.black),),
                    ],
                  ))
            ],
          ),
          const SizedBox(height: 20,),
          Text('INDIAN WEAR',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
          const SizedBox(height: 10,),
          IndTile(text: 'Kurtas'),
          GestureDetector(
              onTap: ()=>Get.to(()=>FabricScreen()),
              child: IndTile(text: 'Fabrics')),
          GestureDetector(
              onTap: ()=>Get.to(()=>ComboScreen()),
              child: IndTile(text: 'Combos')),
          IndTile(text: 'Salwar Suits'),
          IndTile(text: 'Sarees'),
          IndTile(text: 'Ethnic wear'),
          IndTile(text: 'Lehnga Cholis'),
          IndTile(text: 'Ethnic'),

        ],
      ),
    );
  }
}

class IndTile extends StatelessWidget {
  String text;
  IndTile({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text,style: GoogleFonts.jost(fontSize:20 ,fontWeight: FontWeight.w400,color: Colors.white),),
              Icon(Icons.add_circle,size: iconSize,color: Colors.white,)
            ],
          ),
        ),
        const SizedBox(height: 15,)
      ],
    );
  }
}


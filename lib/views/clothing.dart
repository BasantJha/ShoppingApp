import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/utils/constants.dart';
import 'package:outlet_91/views/women_clothing.dart';

class ClothingScreen extends StatelessWidget {
  ClothingScreen({Key? key}) : super(key: key);

  List imageSrc = ['assets/images/clothingMen.png','assets/images/clothingWome.png','assets/images/clothingKids.png','assets/images/clothingBaby.png','assets/images/clothingFashio.png','assets/images/clothingStore.png','assets/images/clothingPlusSize.png'];
  List text=['MEN','WOMEN','KIDS','BABY','FASHION','STORES','PLUS SIZE'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(onPressed: ()=>Get.back(), icon: Icon(Icons.arrow_back_ios_new,size: iconSize,color: Colors.white,)),
        title: Text('Clothing',style: GoogleFonts.jost(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
        titleSpacing: 0,
        actions: [
          Icon(Icons.favorite,color: Colors.pink,size: iconSize,),
          const SizedBox(width: 20,),
        ],
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(20),
          itemBuilder: (context,index){
        return Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffE5f0ed).withOpacity(1),
                  Colors.white.withOpacity(0),
                  Color(0xffD5eee8).withOpacity(0),
                ]
              )
            ),
            child: MaterialButton(
              onPressed: (){
                index==1?Get.to(()=>WomenClothingScreen()):null;
              },
              child: Row(
                children: [
                  const SizedBox(width: 10,),
                  Image.asset(imageSrc[index],height: 80,width: 124,fit: BoxFit.fitHeight,),
                  Expanded(
                    child: Center(
                      child: Text(text[index],style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.black),),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }, separatorBuilder: (context,index){return SizedBox(height: 20,);}, itemCount: text.length),
    );
  }
}

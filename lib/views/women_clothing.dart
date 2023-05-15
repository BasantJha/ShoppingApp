import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/views/indian_wear.dart';

import '../utils/constants.dart';

class WomenClothingScreen extends StatelessWidget {
  const WomenClothingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(onPressed: ()=>Get.back(), icon: Icon(Icons.arrow_back_ios_new,size: iconSize,color: Colors.white,)),
        title: Text('Women',style: GoogleFonts.jost(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
        titleSpacing: 0,
        actions: [
          Icon(Icons.favorite,color: Colors.pink,size: iconSize,),
          const SizedBox(width: 20,),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: ()=>Get.to(()=>IndianWear()),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/indianWear.png',
                        height: 70,
                        width: 70,
                        fit: BoxFit.contain,
                      ),
                      Text(
                        'Indian Wear',
                        style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/westernWear.png',
                      height: 70,
                      width: 70,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      'Western Wear',
                      style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
                    )
                  ],
                ),
              ),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/fusionWear.png',
                      height: 70,
                      width: 70,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      'Fusion',
                      style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
                    )
                  ],
                ),
              ),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/ethnicWear.png',
                      height: 70,
                      width: 70,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      'Ethnic',
                      style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/img.png',width: double.infinity,height: 150,fit: BoxFit.contain,)),
          const SizedBox(height: 15,),
          Center(child: Text('DEALS ON TOP CATEGORIES',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),)),
          Center(child: Text('Shop from our curated picks',style: GoogleFonts.jost(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black),)),
          const SizedBox(height: 15,),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/anarkali-kurta-6954546__340.jpg'),
                    ),
                    Text(
                      'Kurtas',
                      style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    Text(
                      'Under ₹999',
                      style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/salwar.jpg'),
                    ),
                    Text(
                      'Salwar Sets',
                      style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    Text(
                      'Upto 70% off',
                      style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/dresses.jpg'),
                    ),
                    Text(
                      'Dresses',
                      style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    Text(
                      'Starting at ₹999',
                      style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
                    ),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/tshirts.jpg'),
                    ),
                    Text(
                      'T-shirts',
                      style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    Text(
                      'Under ₹999',
                      style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/bra.jpg'),
                    ),
                    Text(
                      'Bra',
                      style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    Text(
                      'Starting at ₹300',
                      style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/watxhe.jpg'),
                    ),
                    Text(
                      'Watches',
                      style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    Text(
                      'Starting at ₹475',
                      style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
                    ),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/footwerar.jpg'),
                    ),
                    Text(
                      'Foot wear',
                      style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    Text(
                      'Starting at ₹270',
                      style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/bags.jpg'),
                    ),
                    Text(
                      'Bags',
                      style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    Text(
                      'Starting at ₹1299',
                      style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/sunglasses.jpg'),
                    ),
                    Text(
                      'Sunglasses',
                      style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    Text(
                      'Starting at ₹396',
                      style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
                    ),
                  ],
                ),
              ),

            ],
          ),
          const SizedBox(height: 15,),
          Image.asset('assets/images/Vector (32).png',height: 150,width: double.infinity,fit: BoxFit.contain,),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('FLASH SALES ',style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.black),),
                Text('70% OFF ',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.black),),
                Text('PRICE DROP',style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.black),),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Stack(
            children: [
              Image.asset('assets/images/78 1.png',height: 166,width: double.infinity,fit: BoxFit.contain,),
              Positioned(
                  top: 30,
                  right: 50,
                  child: Text('LIMITED TIME',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),)),
              Positioned(
                  top: 40,
                  right: 50,
                  child: Text('offer',style: GoogleFonts.allura(fontSize: 70,fontWeight: FontWeight.w700,color: Color(0xffFEA201)),)),

              Positioned(
                  top: 120,
                  right: 70,
                  child: Text('Upto 40% off',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),)),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/utils/colors.dart';
import 'package:outlet_91/widgets/custom_divider.dart';

import '../utils/constants.dart';

class ProductSpecifications extends StatelessWidget {
  String productImage, brandName, productName, productRating, productReviewCount, productPrice, productActualPrice, discount, deliveryDate;
  ProductSpecifications({Key? key,
    required this.productImage,
    required this.brandName,
    required this.productName,
    required this.productRating,
    required this.productReviewCount,
    required this.productPrice,
    required this.productActualPrice,
    required this.discount,
    required this.deliveryDate
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back,size: iconSize,color: Colors.black,),
          ),
          title: Text('Product Details',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 24,color: Colors.black),),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black.withOpacity(0.5),width: 0.5),borderRadius: BorderRadius.circular(4)),
                child: Row(
                  children: [
                    Image.asset(productImage,height: 87,width: 83,fit: BoxFit.contain,),
                    const SizedBox(width: 10,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(brandName,style: GoogleFonts.jost(fontWeight: FontWeight.w400,color: Colors.grey[500],fontSize: 14),),
                        Text(productName,style: GoogleFonts.jost(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 13),),
                        Row(
                          children: [
                            Text("₹$productPrice",style: GoogleFonts.jost(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 10),),
                            const SizedBox(width: 15,),
                            Text("₹$productActualPrice",style: GoogleFonts.jost(fontWeight: FontWeight.w500,color: Colors.grey[600],fontSize: 10,decoration: TextDecoration.lineThrough),),
                          ],
                        ),

                      ],
                    ))
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              decoration:const BoxDecoration(border: Border(bottom: BorderSide(width: 0.5,color: Colors.black))),
              child: TabBar(
                  indicatorColor: kYellowColor,
                  indicatorWeight: 3.0,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black,
                  labelStyle: GoogleFonts.jost(fontSize: 14,fontWeight: FontWeight.w600),
                  unselectedLabelStyle: GoogleFonts.jost(fontSize: 14,fontWeight: FontWeight.w600),
                  tabs: const [
                Text('MORE SPECIFICATIONS'),
                Text('MORE INFO')
              ]),
            ),
            const Expanded(
              child: TabBarView(children: [
                SpecificationsView(),
                InfoView(),
              ]),
            )

          ],
        ),
        bottomNavigationBar: Row(
          children: [
            Expanded(
              child: Container(
                height: 49,
                decoration: BoxDecoration(border: Border.all(color: Colors.black.withOpacity(0.4),width: 0.5),borderRadius: BorderRadius.circular(2)),
                child: Center(child: Text('Add To Cart',style: GoogleFonts.jost(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),)),
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: Container(
                height: 49,
                decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(2)),
                child: Center(child: Text('Buy Now',style: GoogleFonts.jost(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SpecificationsView extends StatelessWidget {
  const SpecificationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      physics: const BouncingScrollPhysics(),
      children: [
        Text('Specifications',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),),
        const CustomDivider(),
        Text('General',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.black),),
        const SizedBox(height: 5,),
        Descriptor(firstText: 'Model Name', secondText: 'Buds VS404'),
        Descriptor(firstText: 'Color', secondText: 'Jet Black'),
        Descriptor(firstText: 'Headphone Type', secondText: 'True Wireless'),
        Descriptor(firstText: 'Inline Remote', secondText: 'No'),
        Descriptor(firstText: 'Sales Package', secondText: '1 Pair of earbuds, charging case,'),
        Descriptor(firstText: 'Charging', secondText: 'Cable, User Manual, warranty registration card'),
        Descriptor(firstText: 'Connectivity', secondText: 'Bluetooth'),
        Descriptor(firstText: 'Headphone Design', secondText: 'Earbud'),
        CustomDivider(),
        Text('Product Details',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.black),),
        CustomDivider(),
        Descriptor(firstText: 'Sweat Proof', secondText: 'Yes'),
        Descriptor(firstText: 'Deep Bass', secondText: 'Yes'),
        Descriptor(firstText: 'Water Resistant', secondText: 'Yes'),
        Descriptor(firstText: 'With Microphone', secondText: 'yes'),
        CustomDivider(),
        Text('Connectivity Features',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.black),),
        CustomDivider(),
        Descriptor(firstText: 'Bluetooth Range', secondText: '10m'),
        CustomDivider(),
        Text('Warranty',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.black),),
        CustomDivider(),
        Descriptor(firstText: 'Domestic Warranty', secondText: '1 Year'),
        Descriptor(firstText: 'Warranty Summary ', secondText: 'Warranty Summary 1 Year Warranty from the Date of Purchase'),
        Descriptor(firstText: 'Warranty SERVICE tYPE', secondText: 'n Case Any Query Please Contact Us help@nexxbase.com, support.gonoise.in and Call on XXXXXXXX'),
        Descriptor(firstText: 'Covered in Warranty', secondText: ' WARRANTY is Applicable on Manufacturing Defects for All the Products for 1Year and Accessories for 3 Months'),
        Descriptor(firstText: 'Not Covered in Warranty', secondText: 'Unauthorized Tamperin Modification or Repairs, Physical Damage, Water Logging or Any Other Damage Due to Heat, Humidity or Moisture doing Operations is not Covered Under Warranty'),


      ],
    );
  }
}


class InfoView extends StatelessWidget {
  const InfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      children: [
        Text('Manufacturing, Packaging and Import Info',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),),
        const CustomDivider(),
        Descriptor(firstText: 'Generic Name', secondText: 'Headphones'),
        Descriptor(firstText: 'Country of Origin', secondText: 'China'),
        const SizedBox(height: 20,),
        Text('Manufactured by:',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.black),),
        const SizedBox(height: 5,),
        Text('Manufactured by: Transcend Sourcing Ltd No1 Building No4 Fulongfuhe Rd Shipai Town Dongguan City Guangdong China 523330',style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.black),),
      ],
    );
  }
}


class Descriptor extends StatelessWidget {
  String firstText,secondText;
  Descriptor({Key? key,required this.firstText, required this.secondText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Text(firstText,style: GoogleFonts.jost(fontSize: 12,color: Colors.grey[600],fontWeight: FontWeight.w500),),),
            const SizedBox(width: 10,),
            Expanded(child: Text(secondText,style: GoogleFonts.jost(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w500),),),
          ],
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}




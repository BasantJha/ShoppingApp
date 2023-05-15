import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:outlet_91/views/product_details.dart';
import 'package:outlet_91/views/root.dart';
import 'package:outlet_91/views/search_screen.dart';

class OrderConfirmation extends StatelessWidget {
   OrderConfirmation({Key? key}) : super(key: key);


   List highlyRatedImgSrc = ['assets/images/searchImage6.png', 'assets/images/searchImage7.png', "assets/images/searchImage8.png"];
  List resultBrandName = ['Noise', 'Noise', 'Travel Blue', 'Travel Blue'];
  List resultProductName = [
    'Noise True Wireless In Ear Earbuds Earphones Headphones Bluetooth 5.0 With Mic - Imperial Jade',
    'Noise True Wireless In Ear Earbuds Earphones Headphones Bluetooth 5.0 With Mic - Imperial Jade',
    'Pebble  Wireless In Ear Earbuds Earphones Headphones Bluetooth 5.0 With Mic - Imperial Jade',
    'Earphones With Volume Control - Blue'
  ];
  List resultRating = ["5", "3", "3", "3"];
  List resultReviewsCount = ["2437", "2437", "2437", '2437'];
  List resultDiscount = ["60", "60", "60", '50'];
  List resultPrice = ["2500", "2500", "2500", '1180'];
  List resultActualPrice = ["3999", "3999", "3999", '5888'];
  List resultReward = ['get upto 5% back+ reward', 'get upto 5% back+ reward', 'get upto 5% back+ reward', 'get upto 5% back+ reward'];
  List resultDeliveryDate = ['friday,february 15', 'friday,february 15', 'friday,february 15', 'friday,february 15'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            Stack(
              children: [
                Image.asset('assets/images/order_confirmation.png',height: 435,width: double.infinity,fit: BoxFit.fill,),
                Positioned(
                    top: 31,
                    left: 31,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Thank You!',style: GoogleFonts.jost(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.black),),
                        Text('Your Order Has\nbeen placed',style: GoogleFonts.jost(fontSize: 34,fontWeight: FontWeight.w500,color: Colors.black,),),
                        const SizedBox(height: 10,),
                        Container(
                          width: 308,
                          height: 29,
                          decoration: BoxDecoration(color: Color(0xff453E3E).withOpacity(0.87),borderRadius: BorderRadius.circular(90)),
                          child: Center(child: Text('You will earn 3360 reward Points (Rs.33.60)',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),)),
                        ),
                        const SizedBox(height: 10,),
                        Text('Deliver to pranay sagar',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),),const SizedBox(height: 5,),
                        Text('129-D, Regent Tower near Fountain chowk,\nNoida uttar Pradesh IN Noida - 121007',style: GoogleFonts.jost(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
                        Text('98989898989',style: GoogleFonts.jost(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),const SizedBox(height: 25,),
                        Container(
                          width: 308,
                          height: 29,
                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(90)),
                          child: Center(child: Text('On tuesday, 28th Feb ( delivery Date )',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black),)),
                        ),
                      ],
                    )),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text('You May Also Like    ',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),),
                  GestureDetector(
                      onTap: (){
                        Get.to(()=>Root());
                      },
                      child: Text('See More',style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.black,decoration: TextDecoration.underline),)),
                ],
              ),
            ),
            SizedBox(
              height: 330,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 20 ),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductDetails(
                        productImage: highlyRatedImgSrc[index],
                        brandName: resultBrandName[index],
                        productName: resultProductName[index],
                        productRating: resultRating[index],
                        productReviewCount: resultReviewsCount[index],
                        productPrice: resultPrice[index],
                        productActualPrice: resultActualPrice[index],
                        discount: resultDiscount[index],
                        deliveryDate: resultDeliveryDate[index]))),
                    child: HighlyRatedRow(
                        imageSrc: highlyRatedImgSrc[index],
                        brandName: resultBrandName[index],
                        productName: resultProductName[index],
                        rewards: resultReward[index],
                        deliveryDate: resultDeliveryDate[index],
                        rating: resultRating[index],
                        discount: resultDiscount[index],
                        price: resultPrice[index],
                        actualPrice: resultActualPrice[index],
                        reviewCount: resultReviewsCount[index]),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

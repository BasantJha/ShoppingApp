import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/utils/colors.dart';
import 'package:get/get.dart';
import 'package:outlet_91/views/root.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_drawer.dart';
import '../search_screen.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List resultImgSrc = ['assets/images/wishlistImage1.png', 'assets/images/wishlistImage2.png', 'assets/images/wishlistImage3.png',];
    List resultBrandName = ['Noise', 'Bolt', 'Milton',];
    List resultProductName = [
      'Noise Buds Vs104 Bluetooth Truly Wireless in Ear Earbuds with Mic, 30-Hours of Playtime,',
      'Boult Audio Maverick Truly Wireless in Ear Earbuds with 35H Playtime, Quad Mic ENC, 45ms Xtreme Low Latency, ',
      'Combo Go Electro Kettle 1.2ltr Aqua 750 Water Bottle 750 ml Flask (Pack of 2, Silver, Steel)',
    ];
    List resultRating = ["3", "3", "3",];
    List resultReviewsCount = ["2956", "2596", "895",];
    List resultDiscount = ["60", "60", "60",];
    List resultPrice = ["1180", "1500", "1199",];
    List resultActualPrice = ["3999", "3999", "3999",];
    List resultReward = ['get upto 5% back+ reward', 'get upto 5% back+ reward', 'get upto 5% back+ reward', ];
    List resultDeliveryDate = ['friday,february 15', 'friday,february 15', 'friday,february 15', ];

    return Scaffold(
        drawer: const CustomDrawer(),
        appBar: CustomAppBar(
          titleWidget: Text(
            'Wishlist',
            style: GoogleFonts.jost(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.all(20),
        children: [

          Image.asset('assets/required images/wishlistEmptyt-removebg-preview.png',height: 150,width: double.infinity,fit: BoxFit.contain,),
          Text('Your wishlist is empty!',textAlign: TextAlign.center,style: GoogleFonts.jost(color: kRedColor,fontSize: 16,fontWeight: FontWeight.w500),),
          Text("Seems like you don't have a wish here\nMake a wish!",textAlign: TextAlign.center,style: GoogleFonts.jost(fontWeight: FontWeight.w400,color: Colors.blueAccent,fontSize: 13),),
          const SizedBox(height: 20,),
          UnconstrainedBox(
            child: Container(
              height: 45,
              width: 120,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Colors.blue),
              child: MaterialButton(
                  onPressed: (){Get.to(()=>Root());},
                  child: Text('Start Shopping',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 13,color: Colors.white),)),
            ),
          ),
          const SizedBox(height: 20,),
          Text('Suggested Products',style: GoogleFonts.jost(fontSize:18 ,fontWeight: FontWeight.w500,color: Colors.black),),
          ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ResultRow(
                    imageSrc: resultImgSrc[index],
                    brandName: resultBrandName[index],
                    productName: resultProductName[index],
                    rewards: resultReward[index],
                    deliveryDate: resultDeliveryDate[index],
                    rating: resultRating[index],
                    discount: resultDiscount[index],
                    price: resultPrice[index],
                    actualPrice: resultActualPrice[index],
                    reviewCount: resultReviewsCount[index]);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 20,
                );
              },
              itemCount: 3),
        ],
      )
    );
  }
}

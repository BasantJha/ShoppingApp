import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/views/order_summary.dart';
import 'package:outlet_91/views/select_delivery_address.dart';
import 'package:outlet_91/widgets/custom_appbar.dart';
import 'package:outlet_91/widgets/custom_button.dart';
import 'package:outlet_91/widgets/custom_divider.dart';
import 'package:get/get.dart';
import '../../utils/colors.dart';
import '../../widgets/custom_drawer.dart';
import '../search_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int numberOfCartItems = 1;

    List resultImgSrc = ['assets/images/cartImage2.png', 'assets/images/cartImage3.png', 'assets/images/cartImage4.png',"assets/images/cartImage5.png"];
    List resultBrandName = ['Noise', 'Boult', 'Boult','Fire Bolt'];
    List resultProductName = [
      'Noise Buds Vs104 Bluetooth Truly Wireless in Ear Earbuds with Mic, 30-Hours of Playtime,',
      'Boult Audio Maverick Truly Wireless in Ear Earbuds with 35H Playtime, Quad Mic ENC, 45ms Xtreme Low Latency,  ',
      'boAt Wave Call Smart Watch, Smart Talk with Advanced Dedicated Bluetooth Calling Chip, 1.69 HD Display ',
      'Fire-Boltt Ninja Call Pro Plus 1.83" Smart Watch with Bluetooth Calling, AI Voice Assistance, 100 Sports Modes IP67 Rating, 240*280 Pixel High Resolution',
    ];
    List resultRating = ["3", "3", "3","2"];
    List resultReviewsCount = ["2389", "2569", "75","458"];
    List resultDiscount = ["60", "60", "60","60"];
    List resultPrice = ["1180", "1500", "1199","1752"];
    List resultActualPrice = ["4999", "3999", "3999","5689"];
    List resultReward = ['get upto 5% back+ reward', 'get upto 5% back+ reward', 'get upto 5% back+ reward','get upto 5% back+ reward' ];
    List resultDeliveryDate = ['friday,february 15', 'friday,february 15', 'friday,february 15',  'friday,february 15'];

    return Scaffold(
        drawer: const CustomDrawer(),
        appBar: CustomAppBar(titleWidget: Text(
          'Cart',
          style: GoogleFonts.jost(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
        ),),
        body: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(20),
          children: [
            GestureDetector(
              onTap: (){
                Get.to(()=>SelectDeliveryAddress());
              },
              child: Row(
                children: [
                  Image.asset('assets/icons/cartLocation.png',height: 24,width: 20,fit: BoxFit.contain,),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Delivery to: Pranay, 200360',style: GoogleFonts.jost(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w400),),
                      Text('h no 563, sector 63 Noida',style: GoogleFonts.jost(fontSize: 14,color: Colors.grey[400],fontWeight: FontWeight.w400),),
                    ],
                  )
                ],
              ),
            ),
            const CustomDivider(),

            Row(
              children: [
                Image.asset('assets/images/cartImage2.png',height: 137,width: 117,fit: BoxFit.contain,),
                 const SizedBox(width: 10,),
                 Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Noise Buds Vs104 Bluetooth Truly Wireless in Ear Earbuds with Mic, 30-Hours of Playtime,',style: GoogleFonts.jost(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 12),),
                      Row(
                        children: [
                          RatingBarIndicator(
                            rating: 4,
                            itemBuilder: (context, index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 10.0,
                            direction: Axis.horizontal,
                          ),
                          const SizedBox(width: 10,),
                          Text('2,437',style: GoogleFonts.jost(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 9),),
                        ],
                      ),
                      Row(
                        children: [
                          Text('₹1180',style: GoogleFonts.jost(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 12),),
                          const SizedBox(width: 10,),
                          Text('₹1395',style: GoogleFonts.jost(fontWeight: FontWeight.w400,color: Colors.grey[500],fontSize: 9,decoration: TextDecoration.lineThrough),),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(color: Colors.grey[100],borderRadius: BorderRadius.circular(2),border: Border.all(color: Colors.black.withOpacity(0.4),width: 0.5)),
                            child: const Center(
                              child: Icon(Icons.remove,color: Colors.black,),
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Text('1',style: GoogleFonts.jost(fontSize: 10,color: Colors.black,fontWeight: FontWeight.w500),),
                          const SizedBox(width: 10,),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(color: Colors.grey[100],borderRadius: BorderRadius.circular(2),border: Border.all(color: Colors.black.withOpacity(0.4),width: 0.5)),
                            child: const Center(
                              child: Icon(Icons.add,color: Colors.black,),
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Text('In Stock',style: GoogleFonts.jost(fontSize: 12,color: const Color(0xff11C865),fontWeight: FontWeight.w500),),
                          const SizedBox(width: 10,),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(color: Colors.grey[100],borderRadius: BorderRadius.circular(2),border: Border.all(color: Colors.black.withOpacity(0.4),width: 0.5)),
                            child: Center(
                              child: Image.asset('assets/icons/cartDelete.png',height: 20,width: 20,fit: BoxFit.contain,),
                            ),
                          ),
                        ],
                      )

                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(child: CustomButton(buttonText: 'Save for Later', onTap: (){},borderRadius: 2,textColor: Colors.black,textSize: 12,buttonColor: Colors.grey[200],elevation: 1,)),
                const SizedBox(width: 2,),
                Expanded(child: CustomButton(buttonText: 'see more like this', onTap: (){},borderRadius: 2,textColor: Colors.black,textSize: 12,buttonColor: Colors.grey[200],elevation: 1,)),
              ],
            ),
            const SizedBox(height: 15,),
            Text('Save Using Coupons',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black),),
            const SizedBox(height: 10,),
            DottedBorder(
              padding: const EdgeInsets.all(10),
                color: Colors.black.withOpacity(0.5),
                strokeWidth: 0.5,
                borderType: BorderType.RRect,
                radius: const Radius.circular(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Get Extra 15% Off upto ₹100',style: GoogleFonts.jost(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w500),),
                        const Spacer(),
                        Text('Save ₹100',style: GoogleFonts.jost(fontSize: 14,color: kGreenColor,fontWeight: FontWeight.w500),),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Text('on 1 items ( price inclusive of\ncashback/coupon)',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black),)
                  ],
                )),
            const SizedBox(height: 10,),
            DottedBorder(
                padding: const EdgeInsets.all(10),
                color: Colors.black.withOpacity(0.5),
                strokeWidth: 0.5,
                borderType: BorderType.RRect,
                radius: const Radius.circular(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Price Details',style: GoogleFonts.jost(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 14)),
                    Row(
                      children: [
                        Text('Price(2 items)',style: GoogleFonts.jost(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w400),),
                        const Spacer(),
                        Text('₹2360',style: GoogleFonts.jost(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w500),),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Discount',style: GoogleFonts.jost(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w400),),
                        const Spacer(),
                        Text('-₹5010',style: GoogleFonts.jost(fontSize: 14,color: const Color(0xffF48020),fontWeight: FontWeight.w500),),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Buy more & save more',style: GoogleFonts.jost(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w400),),
                        const Spacer(),
                        Text('-₹40',style: GoogleFonts.jost(fontSize: 14,color: Colors.grey[500],fontWeight: FontWeight.w500),),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Coupon for you',style: GoogleFonts.jost(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w400),),
                        const Spacer(),
                        Text('-₹40',style: GoogleFonts.jost(fontSize: 14,color: Colors.grey[500],fontWeight: FontWeight.w500),),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Delivery Charges',style: GoogleFonts.jost(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w400),),
                        const Spacer(),
                        Text('Free Delivery',style: GoogleFonts.jost(fontSize: 14,color: kGreenColor,fontWeight: FontWeight.w500),),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    DottedLine(dashColor: Colors.black.withOpacity(0.5),dashLength: 2,),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('Total Amount',style: GoogleFonts.jost(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w500),),
                        const Spacer(),
                        Text('₹3,360',style: GoogleFonts.jost(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w500),),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    
                  ],
                )),
            const  SizedBox(height: 10,),
            Text('You will save ₹2130 on this order',style: GoogleFonts.jost(fontSize: 16,color: kGreenColor,fontWeight: FontWeight.w500),),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              height: 54,
              width: double.infinity,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 3,),
                      Text('₹3,360',style: GoogleFonts.jost(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),),
                      Text('View price details',style: GoogleFonts.jost(fontSize: 14,color: Colors.blueAccent,fontWeight: FontWeight.w500),),
                    ],
                  ),
                  const SizedBox(width: 10,),
                  Expanded(child: CustomButton(buttonText: 'Place Order', onTap: (){
                    Get.to(()=>const OrderSummary());
                  },borderRadius: 5,buttonColor:kBuyNowColor,textSize: 16,textColor:Colors.black,))
                ],
              ),
            ),
            const SizedBox(height: 20,),
            numberOfCartItems==0?Column(
              children: [
                Image.asset('assets/required images/cartEmpty.png',height: 150,width: double.infinity,fit: BoxFit.contain,),
                Text('Fill Your cart with the best of Outlet 91',textAlign: TextAlign.center,style: GoogleFonts.jost(color: kRedColor,fontSize: 16,fontWeight: FontWeight.w500),),
                const SizedBox(height: 20,),
                UnconstrainedBox(
                  child: Container(
                    height: 45,
                    width: 120,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Colors.blue),
                    child: MaterialButton(
                        onPressed: (){},
                        child: Text('Start Shopping',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 13,color: Colors.white),)),
                  ),
                ),
                const SizedBox(height: 20,),
              ],
            ):Container(),

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
                itemCount: resultImgSrc.length),
          ],
        )
    );
  }
}

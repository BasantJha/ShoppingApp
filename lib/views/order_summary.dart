import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/views/order_confirmation.dart';
import 'package:outlet_91/widgets/custom_button.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';
import '../widgets/custom_divider.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back,size: iconSize,color: Colors.black,)),
        titleSpacing: 0,
        title: Text('Order Summary',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          CustomDivider(),
          const SizedBox(height: 10,),
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
                          child: Center(
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
                          child: Center(
                            child: Icon(Icons.remove,color: Colors.black,),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Text('In Stock',style: GoogleFonts.jost(fontSize: 12,color: Color(0xff11C865),fontWeight: FontWeight.w500),),
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
          const SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.black.withOpacity(0.4),width: 0.5,)),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/deliveryProfile1.png',height: 36,width: 36,fit: BoxFit.contain,),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Deliver to pranay sagar',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black),),
                          Text('129-D, Regent Tower near Fountain chowk,Noida',style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.grey),),
                          Text('Uttar Pradesh IN',style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.grey),),
                          Text('Noida -121007',style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.grey),),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                CustomButton(buttonText: 'CHANGE OR ADD ADDRESS', onTap: (){},elevation:1,buttonColor: Colors.white,borderRadius: 80,border: Border.all(color: Colors.black.withOpacity(0.5),width: 0.5),textColor: Colors.black,textSize: 16,),


              ],
            ),
          ),
          const SizedBox(height: 5,),
          Row(
            children: [
              Text('YOUR BUSINESS ORDERS',style: GoogleFonts.jost(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),),
              Text('(order number (optional)',style: GoogleFonts.jost(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xffA38888)),),
            ],
          ), const SizedBox(height: 5,),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.black.withOpacity(0.4),width: 0.5,)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Invoice & Billing Details',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),),
              Text('My Party shop',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.black),),
              Text('Shop no.7 Nehru sidhant Kender, feroze gandhi Market Ludhiana IN',style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.grey),),
              Text('Ludhiana - 141001',style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.grey),),
              Text('GST IN :010AHPA8122D1ZZ ',style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.grey),),
              ],
            ),
          ),
          const SizedBox(height: 5,),
      Text('Your detault Payment Methods',style: GoogleFonts.jost(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),), const SizedBox(height: 5,),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.black.withOpacity(0.4),width: 0.5,)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('UPI',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),),
                Text('PAYTM',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),),
                const SizedBox(height: 10,),
                CustomButton(buttonText: 'PAY Rs,3360', onTap: (){Get.to(()=>OrderConfirmation());},buttonColor: Colors.black,textSize: 18,textColor: Colors.white,elevation: 2,)
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.black.withOpacity(0.4),width: 0.5,)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Other Payment options',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),),
                    const Spacer(),
                    Icon(Icons.keyboard_double_arrow_down,color: Colors.black,size: 16,)
                  ],
                ),
                Text('Net banking debit/Credit cards, Pay Later',style: GoogleFonts.jost(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xffAB8A8A)),),
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.black.withOpacity(0.4),width: 0.5,)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Price Details',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),),
                    const Spacer(),
                    Icon(Icons.keyboard_double_arrow_down,color: Colors.black,size: 16,)
                  ],
                ),
                Row(
                  children: [
                    Text('Price(2 items)',style: GoogleFonts.jost(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xffAB8A8A)),),
                    const Spacer(),
                    Text('Rs.3360',style: GoogleFonts.jost(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xffAB8A8A)),),
                  ],
                ),
                Row(
                  children: [
                    Text('Shipping (!)',style: GoogleFonts.jost(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xffAB8A8A)),),const Spacer(),
                    Text('Free',style: GoogleFonts.jost(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xffAB8A8A)),),
                  ],
                ),
                Row(
                  children: [
                    Text('You pay',style: GoogleFonts.jost(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff000000)),),const Spacer(),
                    Text('Rs.3360',style: GoogleFonts.jost(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xffAB8A8A)),),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.black.withOpacity(0.4),width: 0.5,)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Delivered by monday,27 feb2023',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),),
                    const Spacer(),
                    Icon(Icons.keyboard_double_arrow_down,color: Colors.black,size: 16,)
                  ],
                ),
                Text('Guaranteed Delivery',style: GoogleFonts.jost(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xffAB8A8A)),),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Container(
            width: double.infinity,
            height: 29,
            decoration: BoxDecoration(color: Color(0xff453E3E).withOpacity(0.87),borderRadius: BorderRadius.circular(90)),
            child: Center(child: Text('You will earn 3360 reward Points (Rs.33.60)',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),)),
          ),const SizedBox(height: 30,),
        ],
      ),
    );
  }
}

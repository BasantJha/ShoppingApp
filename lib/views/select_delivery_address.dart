import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/controllers/select_delivery_address_controller.dart';
import 'package:outlet_91/utils/constants.dart';
import 'package:get/get.dart';
import 'package:outlet_91/views/add_new_address.dart';
import 'package:outlet_91/views/order_summary.dart';
import 'package:outlet_91/widgets/custom_button.dart';
import 'package:outlet_91/widgets/custom_divider.dart';

class SelectDeliveryAddress extends StatelessWidget {
  SelectDeliveryAddress({Key? key}) : super(key: key);

  final SelectDeliveryAddressController controller = Get.put(SelectDeliveryAddressController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back,size: iconSize,color: Colors.black,)),
        titleSpacing: 0,
        title: Text('Select Delivery Address',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          CustomDivider(),
          const SizedBox(height: 10,),
          GestureDetector(
              onTap: (){

                Get.to(()=>AddNewAddress());
              },
              child: Text('+ ADD NEW ADDRESS',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)),
          const SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.only(left: 12,top: 10,right: 6,bottom: 10),
            width: double.infinity,
            decoration: BoxDecoration(border: Border.all(color: Colors.black.withOpacity(0.2),width: 0.6),borderRadius: BorderRadius.circular(5)),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/deliveryProfile1.png',height: 36,width: 36,fit: BoxFit.contain,),
                    const SizedBox(width: 10,),
                    Text('PRINCE KUMAR',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black),),
                    const Spacer(),
                    Obx(()=> Radio(value: 'PRINCE KUMAR', groupValue: controller.personName.value, onChanged: (value){
                      controller.personName.value = value.toString();
                    },activeColor: Colors.black,)),
                  ],
                ),
                Text('3891 Ranchview Dr. Richardson, California 62639',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey),),
                Text('(316) 555-0116',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black),),
                Obx(
                  ()=>controller.personName.value=='PRINCE KUMAR'?Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      Text('EDIT',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xfff48020)),),
                      const SizedBox(height: 10,),
                      CustomButton(buttonText: 'Delivery to this Address', onTap: (){
                        Get.to(()=>OrderSummary());
                      },buttonColor: Colors.black,borderRadius: 5,elevation: 2,textSize: 16,textColor: Colors.white,)
                    ],
                  ):Container(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 12,top: 10,right: 6,bottom: 10),
            width: double.infinity,
            decoration: BoxDecoration(border: Border.all(color: Colors.black.withOpacity(0.2),width: 0.6),borderRadius: BorderRadius.circular(5)),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/deliveryProfile2.png',height: 36,width: 36,fit: BoxFit.contain,),
                    const SizedBox(width: 10,),
                    Text('NEW',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black),),
                    const Spacer(),
                    Obx(()=> Radio(value: 'NEW', groupValue: controller.personName.value, onChanged: (value){
                      controller.personName.value = value.toString();
                    },activeColor: Colors.black,)),
                  ],
                ),
                Text('3517 W. Gray St. Utica, Pennsylvania 57867',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey),),
                Text('+ (316) 555-0116',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black),),
                Obx(
                  ()=> controller.personName.value=='NEW'?Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      Text('EDIT',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xfff48020)),),
                      const SizedBox(height: 10,),
                      CustomButton(buttonText: 'Delivery to this Address', onTap: (){
                        Get.to(()=>OrderSummary());
                      },buttonColor: Colors.black,borderRadius: 5,elevation: 2,textSize: 16,textColor: Colors.white,)
                    ],
                  ):Container(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 12,top: 10,right: 6,bottom: 10),
            width: double.infinity,
            decoration: BoxDecoration(border: Border.all(color: Colors.black.withOpacity(0.2),width: 0.6),borderRadius: BorderRadius.circular(5)),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/deliveryProfile3.png',height: 36,width: 36,fit: BoxFit.contain,),
                    const SizedBox(width: 10,),
                    Text('YOGESH KUMAR',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black),),
                    const Spacer(),
                    Obx(()=> Radio(value: 'YOGESH KUMA', groupValue: controller.personName.value, onChanged: (value){
                      controller.personName.value = value.toString();
                    },activeColor: Colors.black,)),
                  ],
                ),
                Text('3517 W. Gray St. Utica, Pennsylvania 57867',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey),),
                Text('+ (316) 555-0116',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black),),
                Obx(
                      ()=> controller.personName.value=='YOGESH KUMA'?Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      Text('EDIT',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xfff48020)),),
                      const SizedBox(height: 10,),
                      CustomButton(buttonText: 'Delivery to this Address', onTap: (){
                        Get.to(()=>OrderSummary());
                      },buttonColor: Colors.black,borderRadius: 5,elevation: 2,textSize: 16,textColor: Colors.white,)
                    ],
                  ):Container(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

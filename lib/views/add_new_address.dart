import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/widgets/custom_button.dart';
import 'package:outlet_91/widgets/underlined_text_field.dart';

import '../utils/constants.dart';
import '../widgets/custom_divider.dart';

class AddNewAddress extends StatelessWidget {
  AddNewAddress({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController houseNumberController = TextEditingController();
  final TextEditingController roadController = TextEditingController();
  final TextEditingController pinCodeController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController nearbyLocationController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back,size: iconSize,color: Colors.black,)),
        titleSpacing: 0,
        title: Text('Add delivery Address',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          CustomDivider(),
          const SizedBox(height: 10,),
          UnderLinedTextField(controller: nameController, hinText: 'Name', ),const SizedBox(height: 10,),
          UnderLinedTextField(controller: phoneController, hinText: 'Phone Number', ),const SizedBox(height: 30,),
          Row(
            children: [
              Image.asset('assets/icons/addAddressIcon.png',height: 24,width: 24,fit: BoxFit.contain,),
              const SizedBox(width: 10,),
              Text('Address',style: GoogleFonts.jost(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),)
            ],
          ),const SizedBox(height: 10,),
          UnderLinedTextField(controller: houseNumberController, hinText: 'House no./ Building Name', ),const SizedBox(height: 10,),
          UnderLinedTextField(controller: roadController, hinText: 'Road Name / Area / Colony', ),const SizedBox(height: 10,),
          Row(
            children: [
              Expanded(child: UnderLinedTextField(controller: pinCodeController, hinText: 'Pin Code', keyBoardType: TextInputType.number,totalNumberOfInputs: 6,)),
              const SizedBox(width: 10,),
              Expanded(child: UnderLinedTextField(controller: stateController, hinText: 'State', )),
            ],
          ),const SizedBox(height: 10,),
          UnderLinedTextField(controller: nearbyLocationController, hinText: 'Nearby Location (Optional)', ),const SizedBox(height: 10,),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(20, 4, 20, 10),
        child: CustomButton(buttonText: 'Save Address and Continue', onTap: (){
          Get.back();
        },borderRadius: 5,textColor: Colors.white,textSize: 16,buttonColor: Colors.black,),
      ),
    );
  }
}

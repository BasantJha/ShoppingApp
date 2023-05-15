import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/controllers/auth_controller.dart';
import 'package:outlet_91/utils/constants.dart';
import 'package:outlet_91/utils/form_validators.dart';
import 'package:outlet_91/views/bottom%20nav%20screens/home_screen.dart';
import 'package:outlet_91/views/root.dart';
import 'package:outlet_91/widgets/custom_text_field.dart';

import '../../widgets/custom_button.dart';

class RegisterScreen extends GetView<AuthController> {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 90,),
              Center(child: Image.asset('assets/images/outletLogo.png',height: 120,width: 120,fit: BoxFit.contain,)),
              const SizedBox(height: 40,),
              Text('Register',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
              const SizedBox(height: 30,),
              SizedBox(height:45,child: CustomTextField(controller: controller.nameController, validator: nameValidator,hintText: 'Full Name',)),
              const SizedBox(height: 20,),
              SizedBox(height:45,child: CustomTextField(controller: controller.emailController, validator: emailValidator,hintText: 'E-mail',)),
              const SizedBox(height: 20,),
              SizedBox(height:45,child: CustomTextField(controller: controller.mobileController, validator: nameValidator, hintText: 'Mobile Number')),
              const SizedBox(height: 20,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Gender',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.white),),
                  const SizedBox(width: 15,),
                  Expanded(child: Obx(
                    ()=> GestureDetector(
                      onTap: (){
                        controller.genderIndex.value= 2;
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(circularBorderRadius),color: controller.genderIndex.value==2?Colors.white:Colors.black,border: Border.all(color: Colors.white,width: 0.5)),
                        child: Center(child: Text('Male',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14,color: controller.genderIndex.value==2?Colors.black:Colors.white),)),
                      ),
                    ),
                  )),
                  const SizedBox(width: 15,),
                  Expanded(child: Obx(
                    ()=> GestureDetector(
                      onTap: (){
                        controller.genderIndex.value= 1;
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(circularBorderRadius),color: controller.genderIndex.value==1?Colors.white:Colors.black,border: Border.all(color: Colors.white,width: 0.5)),
                        child: Center(child: Text('Female',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14,color: controller.genderIndex.value==1?Colors.black:Colors.white),)),
                      ),
                    ),
                  )),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('Age Group',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.white),),
                  const SizedBox(width: 15,),
                  Expanded(child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(circularBorderRadius),
                      border: Border.all(color: Colors.white,width: 0.5),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: Obx(
                            () => DropdownButton(
                              borderRadius: BorderRadius.circular(12),
                              dropdownColor: Colors.black,
                          hint: const Text('Select year'),
                          value: controller.ageDropDownValue.value,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: controller.age.map((items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
                              ),
                            );
                          }).toList(),
                          onChanged: (var newValue) {
                            controller.ageDropDownValue.value = newValue.toString();
                          },
                        ),
                      ),
                    ),
                  ),)

                ],
              ),
              const SizedBox(height: 30,),



            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child:              SizedBox(height:60,child: CustomButton(buttonText: 'Submit', onTap: (){Get.to(()=>Root());},buttonColor: Colors.white,textSize:16,textColor: Colors.black,))
        ,
      ),
    );
  }
}

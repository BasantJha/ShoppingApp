import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/controllers/auth_controller.dart';
import 'package:outlet_91/views/get%20started/register.dart';
import 'package:pinput/pinput.dart';

import '../../widgets/custom_button.dart';

class OtpScreen extends GetView<AuthController> {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 90,),
              Center(child: Image.asset('assets/images/outletLogo.png',height: 120,width: 120,fit: BoxFit.contain,)),
              const SizedBox(height: 40,),
              Text('ENTER MOBILE NUMBER',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
              const SizedBox(height: 5,),
              Text('Otp has been sent to your phone number',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.white),),
              const SizedBox(height: 50,),
              Pinput(
                length: 4,
                defaultPinTheme: controller.defaultPinTheme,
                focusedPinTheme: controller.focussedPinTheme,
                submittedPinTheme: controller.submittedPinTheme,
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) {
                  // authController.otp.value = pin;
                  controller.inputOtp = pin;
                  controller.otpComplete.value = true;
                },
              ),
              const SizedBox(height: 20,),
              Text("I didn't receive a Code!",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.white,decoration: TextDecoration.underline),),
              const SizedBox(height: 10,),
              Text("Resend Code",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.white,),),

            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child:              SizedBox(height:60,child: CustomButton(buttonText: 'Verify', onTap: (){Get.to(()=>RegisterScreen());},buttonColor: Colors.white,textSize:16,textColor: Colors.black,))
        ,
      ),
    );
  }
}

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/controllers/auth_controller.dart';
import 'package:outlet_91/utils/constants.dart';
import 'package:outlet_91/utils/form_validators.dart';
import 'package:outlet_91/views/get%20started/otp_screen.dart';
import 'package:outlet_91/widgets/custom_button.dart';
import 'package:outlet_91/widgets/custom_text_field.dart';

class MobileNumberScreen extends StatelessWidget {
  MobileNumberScreen({Key? key}) : super(key: key);

  final AuthController authController = Get.put(AuthController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 90,),
            Center(child: Image.asset('assets/images/outletLogo.png',height: 120,width: 120,fit: BoxFit.contain,)),
            const SizedBox(height: 40,),
            Text('ENTER MOBILE NUMBER',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
            const SizedBox(height: 5,),
            Text('We will send you one time code on your phone number',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.white),),
            const SizedBox(height: 50,),
            CustomTextField(
              controller: authController.phoneController.value,
              validator: phoneValidator,
              hintText: 'Phone Number',
              limitingFormatter: 10,
              keyboardType: TextInputType.number,
              prefixIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 5, 10, 5),
                    child: TextButton.icon(
                      onPressed: () {
                        showCountryPicker(
                            context: context,
                            countryListTheme: CountryListThemeData(
                                flagSize: 20,
                                bottomSheetHeight: 400,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                ),
                                inputDecoration: InputDecoration(
                                  labelText: 'Search',
                                  labelStyle: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black),
                                  hintText: 'Start typing to search',
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(circularBorderRadius)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(circularBorderRadius), borderSide: BorderSide(color: Colors.black.withOpacity(0.5), width: 1)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(circularBorderRadius), borderSide: const BorderSide(color: Colors.black, width: 2)),
                                )
//
                            ),
                            onSelect: (Country country) {
                              print('Select Country: ${country.phoneCode}');
                              authController.countryCode.value = "+ ${country.phoneCode}";
                            });
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(circularBorderRadius)),
                        backgroundColor: const Color(0xffF4F4F4),
                        foregroundColor: Colors.black,
                      ),
                      icon:
                      Obx(() => Text(authController.countryCode.value, style: GoogleFonts.poppins(fontWeight: FontWeight.w400, color: Colors.black))),
                      label: const Icon(Icons.keyboard_arrow_down),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(height:60,child: CustomButton(buttonText: 'Get OTP', onTap: (){
              Get.to(()=>OtpScreen());
            },buttonColor: Colors.white,textSize:16,textColor: Colors.black,))

          ],
        ),
      ),
    );
  }
}

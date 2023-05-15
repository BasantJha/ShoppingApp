import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class AuthController extends GetxController{

  Rx<TextEditingController> phoneController = TextEditingController().obs;
  String otpPhoneNumber = '';
  RxString countryCode = '+91'.obs;


  //otp
  final defaultPinTheme = PinTheme(
      height: 50,
      width: 50,
      textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 26, color: const Color(0xff000000)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.black, width: 0.5),
      ));
  late PinTheme focussedPinTheme;
  late PinTheme submittedPinTheme;
  String inputOtp = '';
  RxInt timeLeft = 30.obs;
  var otpComplete = false.obs;
  String serverOtp = '';




  //register
  TextEditingController mobileController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  RxInt genderIndex = 1.obs;

  RxString ageDropDownValue = '15------24'.obs;
  List age =[
    '15------24',
    '24------34',
    '34------44',
    '44------54',
  ];




  @override
  void onInit() {
    focussedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Colors.white),
    );

    submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: const Color(0xffFFFFFF),
      ),
    );
    super.onInit();
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/blackBackground.png',height: MediaQuery.of(context).size.height,width: double.infinity,fit: BoxFit.cover,),
          Positioned.fill(child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/splashCart.png',height: 150,width: 150,fit: BoxFit.cover,),
                const SizedBox(height: 20,),
                Image.asset('assets/required images/AI-file-9600x7200 (1).png',height: 400,width: 400,fit: BoxFit.fill,),
                const SizedBox(height: 15,),
                // Image.asset('assets/images/outletText.png',height: 32,width: 150,fit: BoxFit.contain,),
                Text('Shopoquick',style: GoogleFonts.poppins(fontSize: 32,color: Colors.white,fontWeight: FontWeight.w600),)
              ],
            ),
          ))
        ],
      ),
    );
  }
}

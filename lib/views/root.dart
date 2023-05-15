import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/controllers/root_controller.dart';
import 'package:outlet_91/utils/colors.dart';

class Root extends StatelessWidget {
  Root({Key? key}) : super(key: key);

  final RootController controller = Get.put(RootController());

  @override
  Widget build(BuildContext context) {
    double size=20;
    return Scaffold(
      body: Obx(() => controller.tabs[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
            () => ClipRRect(
              child: Container(
                height: 50,
                margin: const EdgeInsets.only(left: 10,right: 10,bottom: 5),
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.1),border: Border.all(color: Colors.black.withOpacity(0.45),width: 0.5),borderRadius: BorderRadius.circular(10)),
                child: Stack(
                  children: [
                    BackdropFilter( filter: ImageFilter.blur(sigmaX: 50,sigmaY: 50),),
                    BottomNavigationBar(
                        elevation: 0,
                        backgroundColor: Colors.white24,
                        type: BottomNavigationBarType.fixed,
                        showUnselectedLabels: false,
                        showSelectedLabels: false,
                        currentIndex: controller.currentIndex.value,
                        onTap: (value) => controller.changeTab(value),
                        items: [
                          BottomNavigationBarItem(
                              icon: controller.currentIndex.value == 0 ?Image.asset(
                                'assets/icons/home_filled.png',
                                height: size,
                                width: size,
                                fit: BoxFit.fill,

                              ):Image.asset(
                                'assets/icons/home_outlined.png',
                                height: size,
                                width: size,
                                fit: BoxFit.fill,

                              ),
                              label: "Home"),
                          BottomNavigationBarItem(
                              icon: controller.currentIndex.value == 1 ?Image.asset(
                                'assets/icons/user_filled.png',
                                height: size,
                                width: size,
                                fit: BoxFit.fill,

                              ):Image.asset(
                                'assets/icons/user_outlined.png',
                                height: size,
                                width: size,
                                fit: BoxFit.fill,

                              ),
                              label: "Profile"),
                          BottomNavigationBarItem(
                              icon: Obx(
                                    ()=> AnimatedRotation(
                                  curve: Curves.easeOutExpo,
                                  turns: controller.turns.value,
                                  duration: const Duration(seconds: 1),
                                  child: GestureDetector(

                                    onTap: (){
                                      if(controller.isClicked.value){
                                        controller.turns.value-=1/2;
                                      }
                                      else{
                                        controller.turns.value+=1/2;
                                      }
                                      controller.isClicked.value = !controller.isClicked.value;
                                      controller.currentIndex.value = 2;
                                    },
                                    child: Image.asset(controller.currentIndex.value == 2?'assets/icons/repeat (1).png':'assets/icons/repeat (1).png',height: size,
                                      width: size,
                                      fit: BoxFit.fill,),
                                  ),
                                ),
                              ),
                              label: "Blog"),
                          BottomNavigationBarItem(
                              icon: controller.currentIndex.value == 3 ?Image.asset(
                                'assets/icons/cart_filled.png',
                                height: size,
                                width: size,
                                fit: BoxFit.fill,

                              ):Image.asset(
                                'assets/icons/cart_outlined.png',
                                height: size,
                                width: size,
                                fit: BoxFit.fill,

                              ),
                              label: "Cart"),
                          BottomNavigationBarItem(
                              icon: controller.currentIndex.value == 4 ?Image.asset(
                                'assets/icons/favorites_filled.png',
                                height: size,
                                width: size,
                                fit: BoxFit.fill,

                              ):Image.asset(
                                'assets/icons/favorites_outlined.png',
                                height: size,
                                width: size,
                                fit: BoxFit.fill,

                              ),
                              label: "Favorites"),


                        ]),
                  ],
                ),
              ),
            ),
      ),
      // floatingActionButton: Obx(
      //       ()=> Container(height: 60,width: 60,padding:const EdgeInsets.all(10),decoration: BoxDecoration(color: controller.currentIndex.value == 2?kRedColor:kYellowColor,shape: BoxShape.circle),child: GestureDetector(
      //       onTap: (){
      //         controller.currentIndex.value = 2;
      //       },
      //       child: Image.asset(controller.currentIndex.value == 2?'assets/icons/blogIcon-removebg-preview.png':'assets/icons/blogIcon-removebg-preview.png',height: size,
      //         width: size,
      //         fit: BoxFit.fill,)),),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked ,













      // bottomNavigationBar:BottomAppBar(
      //
      //   shape:const CircularNotchedRectangle(),
      //   notchMargin: 12,
      //   child: SizedBox(
      //     height: 60,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: <Widget>[
      //         Row(
      //           children: [
      //
      //             Obx(
      //                   ()=> AnimatedRotation(
      //                     curve: Curves.easeOutExpo,
      //                     turns: controller.turns.value,
      //                     duration: const Duration(seconds: 1),
      //                     child: MaterialButton(
      //                 minWidth: 40,
      //                 onPressed: (){
      //                     if(controller.isClicked.value){
      //                       controller.turns.value-=1/2;
      //                     }
      //                     else{
      //                       controller.turns.value+=1/2;
      //                     }
      //                     controller.isClicked.value = !controller.isClicked.value;
      //                     controller.currentIndex.value = 0;
      //                 },
      //                 child: Image.asset(controller.currentIndex.value == 0?'assets/icons/home_filled.png':'assets/icons/home_outlined.png',height: size,
      //                     width: size,
      //                     fit: BoxFit.fill,),
      //               ),
      //                   ),
      //             ),
      //
      //
      //
      //
      //             Obx(
      //                   ()=> MaterialButton(
      //                 minWidth: 40,
      //                 onPressed: (){
      //                   controller.currentIndex.value = 1;
      //                 },
      //                 child: Image.asset(controller.currentIndex.value == 1?'assets/icons/favorites_filled.png':'assets/icons/favorites_outlined.png',height: size,
      //                     width: size,
      //                     fit: BoxFit.fill,),
      //               ),
      //             ),
      //
      //             Obx(
      //                   ()=> AnimatedRotation(
      //                 curve: Curves.easeOutExpo,
      //                 turns: controller.turns.value,
      //                 duration: const Duration(seconds: 1),
      //                 child: MaterialButton(
      //
      //                   onPressed: (){
      //                     if(controller.isClicked.value){
      //                       controller.turns.value-=1/2;
      //                     }
      //                     else{
      //                       controller.turns.value+=1/2;
      //                     }
      //                     controller.isClicked.value = !controller.isClicked.value;
      //                     controller.currentIndex.value = 2;
      //                   },
      //                   child: Image.asset(controller.currentIndex.value == 2?'assets/icons/ello-optimized-36675059 1 (2) (1).png':'assets/icons/ello-optimized-36675059 1 (2) (1).png',height: size,
      //                     width: size,
      //                     fit: BoxFit.fill,),
      //                 ),
      //               ),
      //             ),
      //
      //
      //             Obx(
      //                   ()=> MaterialButton(
      //                 minWidth: 40,
      //                 onPressed: (){
      //
      //                   controller.currentIndex.value = 3;
      //                 },
      //                 child: Image.asset(controller.currentIndex.value == 3?'assets/icons/cart_filled.png':'assets/icons/cart_outlined.png',height: size,
      //                   width: size,
      //                   fit: BoxFit.fill,),
      //               ),
      //             ),
      //
      //
      //
      //
      //             Obx(
      //                   ()=> MaterialButton(
      //                 minWidth: 40,
      //                 onPressed: (){
      //
      //                   controller.currentIndex.value = 4;
      //                 },
      //                 child: Image.asset(controller.currentIndex.value == 4?'assets/icons/user_filled.png':'assets/icons/user_outlined.png',height: size,
      //                   width: size,
      //                   fit: BoxFit.fill,),
      //               ),
      //             ),
      //
      //           ],
      //         ),
      //
      //         // Row(
      //         //   crossAxisAlignment: CrossAxisAlignment.start,
      //         //   children: [
      //         //     Obx(
      //         //           ()=> MaterialButton(
      //         //         minWidth: 40,
      //         //         onPressed: (){
      //         //
      //         //           controller.currentIndex.value = 3;
      //         //         },
      //         //         child: Image.asset(controller.currentIndex.value == 3?'assets/icons/cart_filled.png':'assets/icons/cart_outlined.png',height: size,
      //         //           width: size,
      //         //           fit: BoxFit.fill,),
      //         //       ),
      //         //     ),
      //         //
      //         //     const SizedBox(width: 20,),
      //         //
      //         //
      //         //     Obx(
      //         //           ()=> MaterialButton(
      //         //         minWidth: 40,
      //         //         onPressed: (){
      //         //
      //         //           controller.currentIndex.value = 4;
      //         //         },
      //         //         child: Image.asset(controller.currentIndex.value == 4?'assets/icons/user_filled.png':'assets/icons/user_outlined.png',height: size,
      //         //           width: size,
      //         //           fit: BoxFit.fill,),
      //         //       ),
      //         //     ),
      //         //   ],
      //         // )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

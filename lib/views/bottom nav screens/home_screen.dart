
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/controllers/home_screen_controller.dart';
import 'package:outlet_91/providers/url.dart';
import 'package:outlet_91/utils/colors.dart';
import 'package:outlet_91/utils/constants.dart';
import 'package:get/get.dart';
import 'package:outlet_91/views/categories_to_product_screen.dart';
import 'package:outlet_91/views/clothing.dart';
import 'package:outlet_91/views/sub_categories_screen.dart';
import 'package:outlet_91/widgets/custom_drawer.dart';
import 'package:outlet_91/widgets/custom_text_field.dart';

import '../../widgets/custom_appbar.dart';
import '../../widgets/rectangular_horizontal_list.dart';
import '../../widgets/square_horizontal_list.dart';
import '../search_screen.dart';
import '../../widgets/circular_horizontal_list.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenController controller = Get.put(HomeScreenController());

  var _dotPosition = 0;
  List imageUrl = [
    'assets/images/carousel1.jpg',
    'assets/images/carousel2.jpg',
    'assets/images/carousel3.jpg',
    'assets/images/carousel4.jpg',
    'assets/images/carousel5.jpg'
  ];

  List imageUrlForListView = [
    'assets/images/list1.jpg',
    'assets/images/list2.jpg',
    'assets/images/list3.jpg',
    'assets/images/list4.jpg',
    'assets/images/list5.jpg',
  ];

  List imageAcc = [
    'assets/images/acc1.jpg',
    'assets/images/acc2.jpg',
    'assets/images/acc3.jpg',
    'assets/images/acc4.jpg',
    'assets/images/acc5.jpg',
  ];
  var count =0;

  @override
  Widget build(BuildContext context) {
    print(controller.sectionDetailsList.length.toString()+"Hey");
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(
        titleWidget: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/icons/locationIcon.png',
              height: 11,
              width: 11,
              fit: BoxFit.contain,
            ),
            Text(
              'Sector 63, Noida',
              style: GoogleFonts.jost(fontSize: 10, fontWeight: FontWeight.w600, color: Colors.black),
            )
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15),
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Good Morning,Pranay !!!',
              style: GoogleFonts.jost(fontWeight: FontWeight.w600, fontSize: 10, color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomTextField(
              readOnly: true,
              onTap: () {
                Get.to(() => SearchScreen());
              },
              controller: null,
              validator: null,
              hintText: 'Search by Product,Brand or More..',
              borderRadius: 12,
              isFilled: true,
              filledColor: Colors.white,
              borderColor: Colors.black,
              textColor: Colors.black,
              hintTextColor: Colors.black,
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/icons/microphone.png',
                    height: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset(
                        'assets/icons/search.png',
                        height: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Obx(
            () => controller.carouselImageList.isEmpty
                ? const CircularProgressIndicator()
                : CarouselSlider(
                    items: controller.carouselImageList
                        .map((item) => ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              item,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: 120,
                            )))
                        .toList(),
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction: 0.85,
                        onPageChanged: (val, reason) {
                          // dotPosition = val;
                          // setState(() {});
                        })),
          ),
          const SizedBox(
            height: 15,
          ),
          // Obx(
          //   () => controller.categoryNameList.isEmpty
          //       ? Container()
          //       : SizedBox(
          //           height: 100,
          //           width: double.infinity,
          //           child: ListView.separated(
          //             itemBuilder: (context, index) {
          //               return Column(
          //                 crossAxisAlignment: CrossAxisAlignment.center,
          //                 children: [
          //                   CircleAvatar(
          //                     radius: 40,
          //                     backgroundImage: NetworkImage(
          //                       controller.categoryImageList[index],
          //                     ),
          //                   ),
          //                   Text(
          //                     controller.categoryNameList[index],
          //                     style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
          //                   )
          //                 ],
          //               );
          //             },
          //             separatorBuilder: (context, index) {
          //               return SizedBox(
          //                 width: 20,
          //               );
          //             },
          //             itemCount: controller.categoryImageList.length,
          //             shrinkWrap: true,
          //             scrollDirection: Axis.horizontal,
          //             physics: const BouncingScrollPhysics(),
          //             padding: EdgeInsets.symmetric(horizontal: 20),
          //           )),
          // ),

          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
          //   child: Row(
          //     children: [
          //       Expanded(
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             const CircleAvatar(
          //               radius: 40,
          //               backgroundImage: AssetImage(
          //                 'assets/images/vishnu-mohanan-pfR18JNEMv8-unsplash (1).jpg',
          //               ),
          //             ),
          //             Text(
          //               'Electronics',
          //               style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
          //             )
          //           ],
          //         ),
          //       ),
          //       Expanded(
          //         child: GestureDetector(
          //           onTap: () => Get.to(() => ClothingScreen()),
          //           child: Card(
          //             elevation: 0,
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.center,
          //               children: [
          //                 const CircleAvatar(
          //                   radius: 40,
          //                   backgroundImage: AssetImage(
          //                     'assets/images/artificial-photography-vB5qtt8X4NA-unsplash.jpg',
          //                   ),
          //                 ),
          //                 Text(
          //                   'Fashion',
          //                   style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
          //                 )
          //               ],
          //             ),
          //           ),
          //         ),
          //       ),
          //       Expanded(
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             const CircleAvatar(
          //               radius: 40,
          //               backgroundImage: AssetImage(
          //                 'assets/images/spacejoy-XpbtQfr9Skg-unsplash.jpg',
          //               ),
          //             ),
          //             Text(
          //               'Home Decor',
          //               style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
          //             )
          //           ],
          //         ),
          //       ),
          //       Expanded(
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             const CircleAvatar(
          //               radius: 40,
          //               backgroundImage: AssetImage(
          //                 'assets/images/janko-ferlic-KwU5Cl0LSXs-unsplash.jpg',
          //               ),
          //             ),
          //             Text(
          //               'Kitchenware',
          //               style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
          //             )
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          const SizedBox(
            height: 10,
          ),
          Obx(
            () => controller.sectionDetailsList.isEmpty
                ? Container()
                : ListView.separated(

                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          /*
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                controller.sectionDetailsList[index]['name'],
                                style: GoogleFonts.jost(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
                              ),
                              Container(
                                height: 20,
                                width: 72,
                                decoration: BoxDecoration(
                                  color: const Color(0xfff48020),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    'View More',
                                    style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize: 11, color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),

                           */
                          const SizedBox(
                            height: 10,
                          ),
                          controller.sectionDetailsList[index]['flow']['name'] == 'Circular Horizontal List'
                              ?
                          CircularHorizontal(circularAngularList:controller.sectionDetailsList[index],count: count,)
                          // SizedBox(
                          //         height: 100,
                          //         width: double.infinity,
                          //         child: ListView.separated(
                          //           itemBuilder: (context, i) {
                          //             return GestureDetector(
                          //               onTap: (){
                          //                 controller.sectionDetailsList[index]['category_to_show'][i]['show_product_after_this']?Get.to(()=>CategoriesToProductScreen()):
                          //                 Get.to(()=>SubCategoriesScreen(),arguments: [{'id':controller.sectionDetailsList[index]['category_to_show'][i]['_id']}]);
                          //               },
                          //               child: SizedBox(
                          //                 child: Column(
                          //                   crossAxisAlignment: CrossAxisAlignment.center,
                          //                   children: [
                          //                     CircleAvatar(
                          //                       radius: 40,
                          //                       backgroundImage: NetworkImage(
                          //                         Base_url + controller.sectionDetailsList[index]['category_to_show'][i]['image'],
                          //                       ),
                          //                     ),
                          //                     Text(
                          //                       controller.sectionDetailsList[index]['category_to_show'][i]['name'],
                          //                       style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
                          //                     )
                          //                   ],
                          //                 ),
                          //               ),
                          //             );
                          //           },
                          //           separatorBuilder: (context, i) {
                          //             return const SizedBox(
                          //               width: 20,
                          //             );
                          //           },
                          //           itemCount: controller.sectionDetailsList[index]['category_to_show'].length,
                          //           shrinkWrap: true,
                          //           scrollDirection: Axis.horizontal,
                          //           physics: const BouncingScrollPhysics(),
                          //         ))

                              : controller.sectionDetailsList[index]['flow']['name'] == "Rectangular Horizontal List"
                                  ?
                          rectangularHorizontal( rectAngularList:controller.sectionDetailsList[index],)



                          // // GridView.builder(
                          // //             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10),
                          // //             itemBuilder: (context, i) {
                          // //               return Column(
                          // //                 children: [
                          // //                   ClipRRect(
                          // //                     borderRadius: const BorderRadius.only(
                          // //                       topRight: Radius.circular(12),
                          // //                       topLeft: Radius.circular(12),
                          // //                     ),
                          // //                     child: Image.network(
                          // //                       Base_url + controller.sectionDetailsList[index]['product_to_show'][i]['image'],
                          // //
                          // //                       fit: BoxFit.contain,
                          // //                     ),
                          // //                   ),
                          // //                   Container(
                          // //                     height: 40,
                          // //                     decoration: const BoxDecoration(
                          // //                       color: Color(0xffE0C7C0),
                          // //                       borderRadius: BorderRadius.only(
                          // //                         bottomRight: Radius.circular(12),
                          // //                         bottomLeft: Radius.circular(12),
                          // //                       ),
                          // //                     ),
                          // //                     child: Padding(
                          // //                       padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                          // //                       child: Column(
                          // //                         crossAxisAlignment: CrossAxisAlignment.start,
                          // //                         children: [
                          // //                           Row(
                          // //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // //                             children: [
                          // //                               Text(
                          // //                                 controller.sectionDetailsList[index]['product_to_show'][i]['short_name'],
                          // //                                 style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
                          // //                               ),
                          // //                               Container(
                          // //                                 height: 12,
                          // //                                 width: 37,
                          // //                                 decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(90)),
                          // //                                 child: Center(
                          // //                                   child: Text(
                          // //                                     '50% off',
                          // //                                     style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize: 6, color: Colors.white),
                          // //                                   ),
                          // //                                 ),
                          // //                               ),
                          // //                             ],
                          // //                           ),
                          // //                           Text(
                          // //                             controller.sectionDetailsList[index]['product_to_show'][i]['price_range'],
                          // //                             style: GoogleFonts.jost(fontSize: 9, fontWeight: FontWeight.w500, color: Colors.black),
                          // //                           )
                          // //                         ],
                          // //                       ),
                          // //                     ),
                          // //                   )
                          // //                 ],
                          // //               );
                          // //             },
                          // //             itemCount: controller.sectionDetailsList[index]['product_to_show'].length,
                          // //             shrinkWrap: true,
                          // //             physics: const BouncingScrollPhysics(),
                          // //           )
                          //
                          //
                          //         : controller.sectionDetailsList[index]['flow']['name'] == "Square Horizontal List"
                          //             ? SizedBox(
                          //                 height: 100,
                          //                 width: double.infinity,
                          //                 child: ListView.separated(
                          //                   itemBuilder: (context, i) {
                          //                     return ClipRRect(
                          //                         borderRadius: BorderRadius.circular(12),
                          //                         child: Image.network(
                          //                           Base_url + controller.sectionDetailsList[index]['brand_to_show'][i]['image'],
                          //                           height: 100,
                          //                           fit: BoxFit.fitWidth,
                          //                         )
                          //                     );
                          //                   },
                          //                   separatorBuilder: (context, i) {
                          //                     return const SizedBox(
                          //                       width: 20,
                          //                     );
                          //                   },
                          //                   itemCount: controller.sectionDetailsList[index]['brand_to_show'].length,
                          //                   shrinkWrap: true,
                          //                   scrollDirection: Axis.horizontal,
                          //                   physics: const BouncingScrollPhysics(),
                          //                 )
                          //             )
                          //             : controller.sectionDetailsList[index]['flow']['name'] == "Single Vertical List"
                          //                 ? SizedBox(
                          //                     height: 100,
                          //                     width: double.infinity,
                          //                     child: ListView.separated(
                          //                       itemBuilder: (context, i) {
                          //                         return ClipRRect(
                          //                             borderRadius: BorderRadius.circular(12),
                          //                             child: Image.network(
                          //                               Base_url + controller.sectionDetailsList[index]['brand_to_show'][i]['image'],
                          //                               height: 100,
                          //                               fit: BoxFit.fitWidth,
                          //                             ));
                          //                       },
                          //                       separatorBuilder: (context, i) {
                          //                         return const SizedBox(
                          //                           width: 20,
                          //                         );
                          //                       },
                          //                       itemCount: controller.sectionDetailsList[index]['brand_to_show'].length,
                          //                       shrinkWrap: true,
                          //                       scrollDirection: Axis.horizontal,
                          //                       physics: const BouncingScrollPhysics(),
                          //                     ))


                                          : Container()
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 20,
                      );
                    },
                    itemCount: controller.sectionDetailsList.length,
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    physics: const BouncingScrollPhysics(),
                  ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(
          //         'Best Selling Explore',
          //         style: GoogleFonts.jost(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
          //       ),
          //       Container(
          //         height: 20,
          //         width: 72,
          //         decoration: BoxDecoration(
          //           color: const Color(0xfff48020),
          //           borderRadius: BorderRadius.circular(5),
          //         ),
          //         child: Center(
          //           child: Text(
          //             'View More',
          //             style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize: 11, color: Colors.white),
          //           ),
          //         ),
          //       )
          //     ],
          //   ),
          // ),
          //
          // const SizedBox(
          //   height: 15,
          // ),
          //
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
          //   child: Row(
          //     children: [
          //       Expanded(
          //         child: SizedBox(
          //           height: 190,
          //           child: Column(
          //             children: [
          //               ClipRRect(
          //                 borderRadius: const BorderRadius.only(
          //                   topRight: Radius.circular(12),
          //                   topLeft: Radius.circular(12),
          //                 ),
          //                 child: Image.asset(
          //                   'assets/images/3rdRowImage2.jpg',
          //                   height: 150,
          //                   width: 120,
          //                   fit: BoxFit.fill,
          //                 ),
          //               ),
          //               Container(
          //                 height: 40,
          //                 decoration: const BoxDecoration(
          //                   color: Color(0xffE0C7C0),
          //                   borderRadius: BorderRadius.only(
          //                     bottomRight: Radius.circular(12),
          //                     bottomLeft: Radius.circular(12),
          //                   ),
          //                 ),
          //                 child: Padding(
          //                   padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          //                   child: Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       Row(
          //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                         children: [
          //                           Text(
          //                             'Kurta Set',
          //                             style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
          //                           ),
          //                           Container(
          //                             height: 12,
          //                             width: 37,
          //                             decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(90)),
          //                             child: Center(
          //                               child: Text(
          //                                 '50% off',
          //                                 style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize: 6, color: Colors.white),
          //                               ),
          //                             ),
          //                           ),
          //                         ],
          //                       ),
          //                       Text(
          //                         '₹659 - 1200',
          //                         style: GoogleFonts.jost(fontSize: 9, fontWeight: FontWeight.w500, color: Colors.black),
          //                       )
          //                     ],
          //                   ),
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       const SizedBox(
          //         width: 10,
          //       ),
          //       Expanded(
          //         child: SizedBox(
          //           height: 190,
          //           child: Column(
          //             children: [
          //               ClipRRect(
          //                 borderRadius: const BorderRadius.only(
          //                   topRight: Radius.circular(12),
          //                   topLeft: Radius.circular(12),
          //                 ),
          //                 child: Image.asset(
          //                   'assets/images/3rdRowImage3.jpg',
          //                   height: 150,
          //                   width: 120,
          //                   fit: BoxFit.fill,
          //                 ),
          //               ),
          //               Container(
          //                 height: 40,
          //                 decoration: const BoxDecoration(
          //                   color: Color(0xffE0C7C0),
          //                   borderRadius: BorderRadius.only(
          //                     bottomRight: Radius.circular(12),
          //                     bottomLeft: Radius.circular(12),
          //                   ),
          //                 ),
          //                 child: Padding(
          //                   padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          //                   child: Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       Row(
          //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                         children: [
          //                           Text(
          //                             'Kurtas',
          //                             style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
          //                           ),
          //                           Container(
          //                             height: 12,
          //                             width: 37,
          //                             decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(90)),
          //                             child: Center(
          //                               child: Text(
          //                                 '50% off',
          //                                 style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize: 6, color: Colors.white),
          //                               ),
          //                             ),
          //                           ),
          //                         ],
          //                       ),
          //                       Text(
          //                         '₹500 - 1200',
          //                         style: GoogleFonts.jost(fontSize: 9, fontWeight: FontWeight.w500, color: Colors.black),
          //                       )
          //                     ],
          //                   ),
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       const SizedBox(
          //         width: 10,
          //       ),
          //       Expanded(
          //         child: SizedBox(
          //           height: 190,
          //           child: Column(
          //             children: [
          //               ClipRRect(
          //                 borderRadius: const BorderRadius.only(
          //                   topRight: Radius.circular(12),
          //                   topLeft: Radius.circular(12),
          //                 ),
          //                 child: Image.asset(
          //                   'assets/images/3rdRowImage4.jpg',
          //                   height: 150,
          //                   width: 120,
          //                   fit: BoxFit.fill,
          //                 ),
          //               ),
          //               Container(
          //                 height: 40,
          //                 decoration: const BoxDecoration(
          //                   color: Color(0xffE0C7C0),
          //                   borderRadius: BorderRadius.only(
          //                     bottomRight: Radius.circular(12),
          //                     bottomLeft: Radius.circular(12),
          //                   ),
          //                 ),
          //                 child: Padding(
          //                   padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          //                   child: Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       Row(
          //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                         children: [
          //                           Text(
          //                             'Shirts',
          //                             style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
          //                           ),
          //                           Container(
          //                             height: 12,
          //                             width: 37,
          //                             decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(90)),
          //                             child: Center(
          //                               child: Text(
          //                                 '50% off',
          //                                 style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize: 6, color: Colors.white),
          //                               ),
          //                             ),
          //                           ),
          //                         ],
          //                       ),
          //                       Text(
          //                         '₹300 - 600',
          //                         style: GoogleFonts.jost(fontSize: 9, fontWeight: FontWeight.w500, color: Colors.black),
          //                       )
          //                     ],
          //                   ),
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          //
          // const SizedBox(
          //   height: 10,
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
          //   child: Text(
          //     'Just Arrived: Top Fashion Brands',
          //     style: GoogleFonts.jost(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
          //   ),
          // ),
          //
          // const SizedBox(
          //   height: 10,
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
          //   child: Row(
          //     children: [
          //       Expanded(
          //           child: ClipRRect(
          //               borderRadius: BorderRadius.circular(12),
          //               child: Image.asset(
          //                 'assets/images/4row1.png',
          //                 height: 100,
          //                 fit: BoxFit.fitWidth,
          //               ))),
          //       const SizedBox(
          //         width: 10,
          //       ),
          //       Expanded(
          //           child: ClipRRect(
          //               borderRadius: BorderRadius.circular(12),
          //               child: Image.asset(
          //                 'assets/images/4row2.png',
          //                 height: 100,
          //                 fit: BoxFit.fitWidth,
          //               ))),
          //       const SizedBox(
          //         width: 10,
          //       ),
          //       Expanded(
          //           child: ClipRRect(
          //               borderRadius: BorderRadius.circular(12),
          //               child: Image.asset(
          //                 'assets/images/4row3.png',
          //                 height: 100,
          //                 fit: BoxFit.fitWidth,
          //               ))),
          //     ],
          //   ),
          // ),
          // const SizedBox(
          //   height: 10,
          // ),

          const SizedBox(height: 15,),
          const Image(
            image: AssetImage('assets/images/fossil.png'),
            height: 88,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Trends For Modern Men',
            style: GoogleFonts.jost(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
          ),

          const SizedBox(
            height: 10,
          ),
          SquareHorizontal(),
          // Row(
          //   children: [
          //     Expanded(
          //         child: ClipRRect(
          //             borderRadius: BorderRadius.circular(12),
          //             child: Image.asset(
          //               'assets/images/6row1.png',
          //               height: 100,
          //               fit: BoxFit.fitWidth,
          //             ))),
          //     const SizedBox(
          //       width: 10,
          //     ),
          //     Expanded(
          //         child: ClipRRect(
          //             borderRadius: BorderRadius.circular(12),
          //             child: Image.asset(
          //               'assets/images/6row2.png',
          //               height: 100,
          //               fit: BoxFit.fitWidth,
          //             ))),
          //     const SizedBox(
          //       width: 10,
          //     ),
          //     Expanded(
          //         child: ClipRRect(
          //             borderRadius: BorderRadius.circular(12),
          //             child: Image.asset(
          //               'assets/images/6row3.png',
          //               height: 100,
          //               fit: BoxFit.fitWidth,
          //             ))),
          //   ],
          // ),

          const SizedBox(
            height: 10,
          ),
          Text(
            'New Season Checklist',
            style: GoogleFonts.jost(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: MasonryGridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 9,
                gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                    child: ClipRRect(borderRadius: BorderRadius.circular(12), child: Image.asset('assets/images/grid' + (index + 1).toString() + '.jpg')),
                  );
                }),
          ),

          const SizedBox(
            height: 10,
          ),
          Text(
            'Best Deals for the summer',
            style: GoogleFonts.jost(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          // Container(
          //   margin: const EdgeInsets.only(bottom: 10),
          //   child: CarouselSlider(items: imageUrl.map((items) {
          //     return Image.network(imageUrl[items],fit: BoxFit.cover,);
          //   }).toList(),
          //       options:CarouselOptions(
          //     height: 400,
          //     aspectRatio: 16/9,
          //     viewportFraction: 0.8,
          //     initialPage: 0,
          //     enableInfiniteScroll: true,
          //     reverse: false,
          //     autoPlay: true,
          //     autoPlayInterval: Duration(seconds: 3),
          //     autoPlayAnimationDuration: Duration(milliseconds: 800),
          //     autoPlayCurve: Curves.fastOutSlowIn,
          //     enlargeCenterPage: true,
          //     enlargeFactor: 0.3,
          //     scrollDirection: Axis.horizontal,
          //   )),
          // ),
          CarouselSlider(
              items: imageUrl
                  .map<Widget>((item) => Container(
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green,
                            image: DecorationImage(image: AssetImage(item), fit: BoxFit.fitHeight)),
                      ))
                  .toList(),
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.8,
                  enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  onPageChanged: (val, reason) {
                    _dotPosition = val;
                    setState(() {});
                  })),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: DotsIndicator(
              position: _dotPosition,
              dotsCount: imageUrl.length, //since the first image may take some time to load
              decorator: DotsDecorator(
                color: Colors.grey,
                activeColor: kYellowColor,
                size: const Size.square(9.0),
                activeSize: const Size(30.0, 9.0),
                activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Latest Trends',
            style: GoogleFonts.jost(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 200,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      imageUrlForListView[index],
                      height: 200,
                      width: MediaQuery.of(context).size.width * 0.4,
                      fit: BoxFit.cover,
                    ));
              },
              itemCount: 5,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 15,
                );
              },
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black,
            ),
            height: 100,
            width: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/blackFriday.png',
                  fit: BoxFit.fill,
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Best Accessories',
            style: GoogleFonts.jost(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 150,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      imageAcc[index],
                      height: 200,
                      width: MediaQuery.of(context).size.width * 0.3,
                      fit: BoxFit.cover,
                    ));
              },
              itemCount: 5,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 5,
                );
              },
            ),
          ),
        ],
      ),
    );
  }


}

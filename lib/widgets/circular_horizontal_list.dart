import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../providers/url.dart';
import '../views/categories_to_product_screen.dart';
import '../views/sub_categories_screen.dart';

class CircularHorizontal extends StatelessWidget {
  final int count;
  final Map circularAngularList;
  const CircularHorizontal({Key? key, required this.circularAngularList,required this.count}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    print("Count ${count}");
    print('circular lengthAngularList Screen ${circularAngularList.length}');
    if(circularAngularList['product_to_show'].length>0){
      print("Inside product to show");
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                circularAngularList['name'],
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
          SizedBox(
            height: 5,
          ),
          CircularUI(circularAngularList['product_to_show'])
        ],
      );
    }
    else if(circularAngularList['brand_to_show'].length>0){
      print("Inside Brand to show");
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                circularAngularList['name'],
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
          SizedBox(
            height: 5,
          ),
          CircularUI(circularAngularList['brand_to_show'])
        ],
      );
    }else if(circularAngularList['category_to_show'].length>0){
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                circularAngularList['name'],
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
          SizedBox(
            height: 5,
          ),
          CircularUI(circularAngularList['category_to_show'])
        ],
      );
    }
    return Container();
    /*
    return ListView.builder(
      shrinkWrap: true,
      itemCount: circularAngularList.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        if(circularAngularList[index]['product_to_show'].length>0){
          print("Inside product to show");
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    circularAngularList[index]['name'],
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
              SizedBox(
                height: 5,
              ),
              CircularUI(circularAngularList[index]['product_to_show'])
            ],
          );
        }else if(circularAngularList[index]['brand_to_show'].length>0){
          print("Inside Brand to show");
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    circularAngularList[index]['name'],
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
              SizedBox(
                height: 5,
              ),
              CircularUI(circularAngularList[index]['brand_to_show'])
            ],
          );
        }else if(circularAngularList[index]['category_to_show'].length>0){
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    circularAngularList[index]['name'],
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
              SizedBox(
                height: 5,
              ),
              CircularUI(circularAngularList[index]['category_to_show'])
            ],
          );
        }
        return Container();
      },

    );

     */
  }

  CircularUI(List circularangularlist){
    print('circular angular list ${circularangularlist.length}');
    return SizedBox(
        height: 120,
        width: double.infinity,
        child: ListView.separated(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                print("List ${circularangularlist[index]}");
                circularangularlist[index]['show_product_after_this']?Get.to(()=>CategoriesToProductScreen()):
                Get.to(()=>SubCategoriesScreen(),arguments: [{'id':circularangularlist[index]['_id']}]);
              },
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        circularangularlist[index]['image']==null?"":Base_url + circularangularlist[index]['image'],
                      ),
                    ),
                    Text(
                      circularangularlist[index]['name']==null?"null":circularangularlist[index]['name'],
                      style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, i) {
            return const SizedBox(
              width: 20,
            );
          },
          itemCount: circularangularlist.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
        )
    );
  }
}

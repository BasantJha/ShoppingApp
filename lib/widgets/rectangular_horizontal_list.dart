import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../providers/url.dart';

class rectangularHorizontal extends StatelessWidget {
  final Map rectAngularList;
  const rectangularHorizontal({Key? key,required this.rectAngularList}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    print('rectAngularList Screen $rectAngularList');
    if(rectAngularList['product_to_show'].length>0){
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                rectAngularList['name'],
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
          MainUIFunction(rectAngularList['product_to_show'])
        ],
      );
    }
    else if(rectAngularList['brand_to_show'].length>0){
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                rectAngularList['name'],
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
          MainUIFunction(rectAngularList['brand_to_show'])
        ],
      );
    }
    else if(rectAngularList['category_to_show'].length>0){
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                rectAngularList['name'],
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
          MainUIFunction(rectAngularList['category_to_show'])
        ],
      );
    }
    return Container();
      /*
      ListView.builder(
      shrinkWrap: true,
      itemCount: rectAngularList.length,
      itemBuilder: (BuildContext context, int index) {
       if(rectAngularList[index]['product_to_show'].length>0){
         return Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   rectAngularList[index]['name'],
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
             MainUIFunction(rectAngularList[index]['product_to_show'])
           ],
         );
       }
       else if(rectAngularList[index]['brand_to_show'].length>0){
         return Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   rectAngularList[index]['name'],
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
             MainUIFunction(rectAngularList[index]['brand_to_show'])
           ],
         );
       }
       else if(rectAngularList[index]['category_to_show'].length>0){
         return Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   rectAngularList[index]['name'],
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
             MainUIFunction(rectAngularList[index]['category_to_show'])
           ],
         );
       }
       return Container();
    },

    );

       */
  }


  MainUIFunction(List rectangularlist)
  {
    print('rectAngularList mainScreen $rectAngularList');
    print('rectAngularList mainScreen ${rectAngularList.length}');
    // print('image ${rectangularlist[0]['image']}');
    // print('text ${rectangularlist[0]['short_name']}');
    // print('pricetext ${rectangularlist[0]['price_range']}');
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){

          },
          child: Container(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12),
                  ),
                  child: Image.network(
                    Base_url + rectangularlist[index]['image'],
                    height: 40,
                    width: 60,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Color(0xffE0C7C0),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              rectangularlist[index]['short_name']==null ? "":rectangularlist[index]['short_name'],
                              style: GoogleFonts.jost(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
                            ),
                            Container(
                              height: 12,
                              width: 37,
                              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(90)),
                              child: Center(
                                child: Text(
                                  '50% off',
                                  style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize: 6, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          rectangularlist[index]['price_range']==null ? "":rectangularlist[index]['price_range'],
                          style: GoogleFonts.jost(fontSize: 9, fontWeight: FontWeight.w500, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: rectangularlist.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
    );
  }

}



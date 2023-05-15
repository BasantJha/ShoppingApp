import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../utils/constants.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: iconSize,
            )),
        titleSpacing: 0,
        title: Text(
          'Notifications',
          style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20),
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Center(child: Text('Orders',style: GoogleFonts.jost(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[800]),)),
                ),
              ),const SizedBox(width: 15,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Center(child: Text('Activity',style: GoogleFonts.jost(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[800]),)),
                ),
              ),const SizedBox(width: 15,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Center(child: Text('Promotion',style: GoogleFonts.jost(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[800]),)),
                ),
              ),const SizedBox(width: 50,),
            ],
          ),
          Divider(color: Colors.black.withOpacity(0.5),thickness: 0.5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Promotions',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black),),
              Text('View All',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black),),
            ],
          ),
          Divider(color: Colors.black.withOpacity(0.5),thickness: 0.5,),
          NotificationTile(titleText: 'New & Hit Adrika Sensational Women Kurta Sets', subtitleText: '1 design of Adrika Sensational  Women Kurta Sets starting from Rs.420! Limited Stocks! Book Now!', imageSrc: 'assets/images/notiImage1.png', timeAgo: '1 hr ago'),
          NotificationTile(titleText: 'New & Hit Attractive Men Loafers', subtitleText: '1 design of Latest Attractive  Men Loafers starting from Rs.375! Limited Stocks! Book Now!', imageSrc: 'assets/images/notiImage2.png', timeAgo: '2 hr ago'),
          NotificationTile(titleText: 'New & Hit Attractive Men Shirts', subtitleText: '1 design of Latest Attractive  Men Loafers starting from Rs575! Limited Stocks! Book Now!', imageSrc: 'assets/images/notiImage3.png', timeAgo: '3 hr ago'),
        ],
      ),
    );
  }
}


class NotificationTile extends StatelessWidget {
  String titleText,subtitleText,imageSrc, timeAgo;
  NotificationTile({Key? key,required this.titleText,required this.subtitleText,required this.imageSrc,required this.timeAgo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10,),
        Text(titleText,style: GoogleFonts.jost(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),),
        Text(subtitleText,style: GoogleFonts.jost(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
        ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(imageSrc,height: 150,width: double.infinity,fit: BoxFit.fill,)),
        Divider(color: Colors.black.withOpacity(0.5),thickness: 0.5,),
        Text(timeAgo,style: GoogleFonts.jost(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
      ],
    );
  }
}


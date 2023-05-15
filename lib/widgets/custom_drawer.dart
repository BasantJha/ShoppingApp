import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:outlet_91/views/faq_screen.dart';
import 'package:outlet_91/views/notification_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.55,
      child: Drawer(
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(150))),
        elevation: 0,
        child: ListView(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          children: const [
            CustomDrawerHeader(),
            SizedBox(height: 25,),
            CustomDrawerList(),
          ],
        ),
      ),
    );
  }
}

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 28,),
        Image.asset('assets/images/outletLogo.png',height: 40,width: 40,fit: BoxFit.contain,),
        const SizedBox(height: 5,),
        Image.asset('assets/images/outletText.png',height: 20,width: 85,fit: BoxFit.contain,color: Colors.black,),
        const SizedBox(height: 10,),
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/profilePhoto.jpg'),
          radius: 45,
        ),
        const SizedBox(height: 15,),
        Text('Good morning, Pranay !!!',style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black),)
      ],
    );
  }
}

class CustomDrawerList extends StatelessWidget {
  const CustomDrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerTile(text: 'Account'),
          DrawerTile(text: 'Account Settings'),
          DrawerTile(text: 'Purchased Preferences'),
          DrawerTile(text: 'Reviews/Ratings\nHelp Us Improve'),
          DrawerTile(text: 'Recently viewed'),
          DrawerTile(text: 'Notifications',onTap: ()=>Get.to(()=>NotificationScreen()),),
          DrawerTile(text: 'Payments'),
          DrawerTile(text: 'Personal Details'),
          DrawerTile(text: 'Data and Privacy'),
          DrawerTile(text: 'Close your Account'),
          DrawerTile(text: 'Conditions of Use'),
          DrawerTile(text: 'Privacy Policy'),
          DrawerTile(text: 'FAQs',onTap: ()=>Get.to(()=>FaqScreen()),),
        ],
      ),
    );
  }
}




class DrawerTile extends StatelessWidget {
  String text;
  var onTap;
  DrawerTile({Key? key,required this.text,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap:onTap ,
      leading: Text(text,style: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey[600]),),

       trailing: const Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,),
    );
  }
}







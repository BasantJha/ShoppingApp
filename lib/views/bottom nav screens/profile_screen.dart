import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/views/about_us.dart';
import 'package:outlet_91/views/edit_profile.dart';
import 'package:outlet_91/views/privacy_policy.dart';
import 'package:outlet_91/views/terms_and_conditions.dart';
import 'package:outlet_91/widgets/custom_appbar.dart';

import '../../widgets/custom_drawer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool notificationStatus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const CustomDrawer(),
        appBar: CustomAppBar(titleWidget: Text(
          'Profile',
          style: GoogleFonts.jost(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
        ),),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(20),
          shrinkWrap: true,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Stack(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profilePhoto.jpg'),
                    radius: 30,
                  ),
                  Positioned(
                      bottom: 0,
                      right: -10,
                      child: Image.asset(
                        'assets/icons/editProfilePhotoIcon.png',
                        height: 20,
                        width: 40,
                        fit: BoxFit.contain,
                      ))
                ],
              ),
              horizontalTitleGap: 10,
              title: Text(
                'Pranay',
                style: GoogleFonts.oswald(fontWeight: FontWeight.w400, fontSize: 20, color: Colors.black),
              ),
              subtitle: Text(
                'pranay@gmail.com',
                style: GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
              ),
            ),
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(5)),
              child: MaterialButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/profileWishlist.png',
                      height: 25,
                      width: 25,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Saved Wishlist',
                      style: GoogleFonts.roboto(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            ProfileListTile(imageSrc: 'assets/icons/editProfilePhotoIcon.png', text: 'Edit Profile',imageHeight: 40,imageWidth: 30,onTap: ()=>Get.to(()=>EditProfile()),),
            ProfileListTile(imageSrc: 'assets/icons/profileAccountSettings.png', text: 'Account Settings',imageHeight: 29,imageWidth: 31,),
            ProfileListTile(imageSrc: 'assets/icons/profilePurchasePreference.png', text: 'Purchase Preference',imageHeight: 40,imageWidth: 40,),
            ProfileListTile(
              imageSrc: 'assets/icons/notification.png',
              text: 'Notifications',
                imageHeight: 27,imageWidth: 35,
              trailingWidget: SizedBox(
                width: 40,
                height: 25,
                child: FlutterSwitch(
                  toggleSize: 20,
                    toggleColor: Colors.white,
                    toggleBorder: Border.all(color: Colors.black,width: 0.6),
                    activeColor: Colors.black,
                    value: notificationStatus,
                    onToggle: (value) {
                      setState(() {
                        notificationStatus = value;
                      });
                    }),
              ),
            ),
            ProfileListTile(imageSrc: 'assets/icons/profilePayments.png', text: 'Payments',imageHeight: 32,imageWidth: 32,),
            ProfileListTile(imageSrc: 'assets/icons/profileAboutUs.png', text: 'About Us',imageHeight: 32,imageWidth: 32,onTap: ()=>Get.to(()=>AboutUs()),),
            ProfileListTile(imageSrc: 'assets/icons/insurance.png', text: 'Privacy Policy',imageHeight: 32,imageWidth: 32,onTap: ()=>Get.to(()=>PrivacyPolicy()),),
            ProfileListTile(imageSrc: 'assets/icons/profileTermsAndConditions.png', text: 'Terms & Conditions',imageHeight: 32,imageWidth: 32,onTap: ()=>Get.to(()=>TermsAndConditions())),
            ProfileListTile(imageSrc: 'assets/icons/profileContactUs.png', text: 'Contact Us',imageHeight: 32,imageWidth: 32,),
            ProfileListTile(imageSrc: 'assets/icons/Sign Out.png', text: 'Log Out',imageHeight: 32,imageWidth: 32,),
          ],
        ));
  }
}

class ProfileListTile extends StatelessWidget {
  String imageSrc, text;double imageHeight,imageWidth;
  var trailingWidget,onTap;
  ProfileListTile({Key? key, required this.imageSrc, required this.text, this.trailingWidget,required this.imageWidth,required this.imageHeight,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(vertical: 4),
        leading: Image.asset(
          imageSrc,
          height: imageHeight,
          width: imageWidth,
          fit: BoxFit.contain,
        ),
        title: Text(
          text,
          style: GoogleFonts.roboto(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 14),
        ),
        trailing: trailingWidget ??
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 20,
            ));
  }
}

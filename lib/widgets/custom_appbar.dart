import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:outlet_91/views/notification_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  var titleWidget;
  CustomAppBar({Key? key,required this.titleWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xffe6fbfd),
      leading: Builder(builder: (context){
        return GestureDetector(
          onTap: ()=>Scaffold.of(context).openDrawer(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset('assets/icons/menu-bar.png'),
          ),
        );
      }),
      elevation: 0,
      titleSpacing: 0,
      title: titleWidget,
      actions: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/icons/rupee.png',
              height: 17,
              width: 17,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: ()=>Get.to(()=>NotificationScreen()),
              child: Image.asset(
                'assets/icons/notification.png',
                height: 17,
                width: 17,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              'assets/icons/wallet.png',
              height: 17,
              width: 17,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        )
      ],
      flexibleSpace: Container(
        decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}

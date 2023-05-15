import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/controllers/edit_profile_controller.dart';
import 'package:outlet_91/utils/constants.dart';
import 'package:outlet_91/widgets/underlined_text_field.dart';

class EditProfile extends StatelessWidget {
  EditProfile({Key? key}) : super(key: key);

  final EditProfileController controller = Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: ()=>Get.back(),
          child: const Icon(
            Icons.arrow_back,
            size: iconSize,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
        ),
        actions: [
          Center(
              child: GestureDetector(
                onTap: ()=>Get.back(),
                child: Text(
            'Save',
            style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
          ),
              )),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20),
        children: [
          const Icon(
            Icons.account_circle_rounded,
            color: Colors.black,
            size: 120,
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            'Add Photo',
            style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16, color: const Color(0xffF48020)),
          )),
          const SizedBox(
            height: 10,
          ),
          UnderLinedTextField(controller: controller.nameController, hinText: 'Name', prefixIconImage: Padding(
              padding: const EdgeInsets.all(10.0),
      child: Image.asset('assets/icons/user_filled.png',height: 15,width: 15,fit: BoxFit.contain,),
    )),
          const SizedBox(
            height: 10,
          ),
          UnderLinedTextField(controller: controller.userNameController, hinText: 'Username', prefixIconImage: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Image.asset('assets/icons/@.png',height: 15,width: 15,fit: BoxFit.contain,),
    )),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.info,
                color: Colors.black,
                size: 13,
              ),
              Expanded(
                  child: Text(
                "Username is your unique identity on Outlet91. Once you change it, you won't be able to change again within 30 days!",
                style: GoogleFonts.roboto(fontSize: 12, color: Colors.black.withOpacity(0.6), fontWeight: FontWeight.w400),
              ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          UnderLinedTextField(
            controller: controller.bioController,
            hinText: 'Bio',
            prefixIconImage: Padding(
            padding: const EdgeInsets.all(10.0),
    child: Image.asset('assets/icons/edit.png',height: 15,width: 15,fit: BoxFit.contain,),
    ),
            maxLength: 80,
            maxLines: 1,

          ),
          const SizedBox(
            height: 10,
          ),
          UnderLinedTextField(
            controller: controller.yearController,
            hinText: 'YYYY',
            prefixIconImage: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Image.asset('assets/icons/calendar (1).png',height: 15,width: 15,fit: BoxFit.contain,),
    ),
            maxLength: 4,
            keyBoardType: TextInputType.number,
          ),
          const SizedBox(
            height: 10,
          ),
          UnderLinedTextField(
            controller: controller.websiteController,
            hinText: 'Add Website Link',
            prefixIconImage: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Image.asset('assets/icons/world-wide-web.png',height: 15,width: 15,fit: BoxFit.contain,),
    ),
            keyBoardType: TextInputType.url,
          ),
          const SizedBox(height: 25,),
          Row(
            children: [
              const SizedBox(width: 10,),
              Image.asset(
                'assets/icons/gender.png',
                height: 30,
                width: 30,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Obx(
                  ()=> GestureDetector(
                    onTap: (){
                      controller.selectedIndex.value = 0;
                    },
                    child: Container(
                      height: 39,
                      decoration: BoxDecoration(
                        color: controller.selectedIndex.value == 0?Colors.black:Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black.withOpacity(0.5), width: 0.5),
                      ),
                      child: Center(child: Text('Male',style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,color: controller.selectedIndex.value == 0?Colors.white:Colors.black),)),
                    ),
                  ),
                ),
              ),const SizedBox(width: 10,),
              Expanded(
                child: Obx(
                      ()=> GestureDetector(
                    onTap: (){
                      controller.selectedIndex.value = 1;
                    },
                    child: Container(
                      height: 39,
                      decoration: BoxDecoration(
                        color: controller.selectedIndex.value == 1?Colors.black:Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black.withOpacity(0.5), width: 0.5),
                      ),
                      child: Center(child: Text('Female',style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,color: controller.selectedIndex.value == 1?Colors.white:Colors.black),)),
                    ),
                  ),
                ),
              ),const SizedBox(width: 10,),
              Expanded(
                child: Obx(
                      ()=> GestureDetector(
                    onTap: (){
                      controller.selectedIndex.value = 2;
                    },
                    child: Container(
                      height: 39,
                      decoration: BoxDecoration(
                        color: controller.selectedIndex.value == 2?Colors.black:Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black.withOpacity(0.5), width: 0.5),
                      ),
                      child: Center(child: Text('Others',style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,color: controller.selectedIndex.value == 2?Colors.white:Colors.black),)),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

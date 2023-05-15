import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController{
  final TextEditingController nameController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  final TextEditingController yearController = TextEditingController();
  final TextEditingController websiteController = TextEditingController();

  RxInt selectedIndex = 0.obs;
}
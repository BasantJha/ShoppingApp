import 'package:get/get.dart';
import 'package:outlet_91/views/bottom%20nav%20screens/blog_screen.dart';
import 'package:outlet_91/views/bottom%20nav%20screens/cart_screen.dart';
import 'package:outlet_91/views/bottom%20nav%20screens/favorite_screen.dart';
import 'package:outlet_91/views/bottom%20nav%20screens/home_screen.dart';
import 'package:outlet_91/views/bottom%20nav%20screens/profile_screen.dart';

class RootController extends GetxController{
  RxDouble turns = 0.0.obs;
  RxBool isClicked = false.obs;
  RxInt currentIndex =0.obs;

  changeTab(value){
    currentIndex.value = value;
  }

  List tabs=[];

  @override
  void onInit(){
    tabs = [
      HomeScreen(),
      FavoriteScreen(),
      BlogScreen(),
      CartScreen(),
      ProfileScreen(),
    ];
    super.onInit();
  }
}
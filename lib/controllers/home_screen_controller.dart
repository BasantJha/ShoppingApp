import 'package:get/get.dart';
import 'package:outlet_91/providers/auth_providers.dart';

import '../providers/url.dart';

class HomeScreenController extends GetxController{

  RxList carouselImageList =[].obs;


  RxList categoryNameList = [].obs;
  RxList categoryImageList = [].obs;



  RxList sectionDetailsList = [].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getSliderDetails();
    getSectionDetails();
  }

  getSliderDetails() async{
    try{
      var res=await AuthProvider().getRequest(apiUrl: 'slider');
      for(int i = 0;i<res['data'].length;i++){
        carouselImageList.add(Base_url+res['data'][i]['image']);
      }

    }catch(e){
      print(e.toString());
    }
  }

  getSectionDetails() async{
    try{
      var res = await AuthProvider().getRequest(apiUrl: 'section');
      for(int i = 0;i<res['data'].length;i++){

        if(res['data'][i]['name']=="Category"){
          // categoryList.add(res['data'][i]['category_to_show']);
          for(int j = 0;j<res['data'][i]['category_to_show'].length;j++){
            categoryImageList.add(Base_url+res['data'][i]['category_to_show'][j]['image'].toString().trim());
            categoryNameList.add(res['data'][i]['category_to_show'][j]['name']);
            // print(res['data'][i]['category_to_show'][j]['name']);
            // print('hi ${res['data'][i]['category_to_show'].length.toString()}');
            // print(Base_url+res['data'][i]['category_to_show'][j]['image'].toString().trim());
          }
        }
        // print(res['data'][i]['name'].toString());
      }
      sectionDetailsList.addAll(res['data']);
      print("hei");
    }catch(e){}
  }
}
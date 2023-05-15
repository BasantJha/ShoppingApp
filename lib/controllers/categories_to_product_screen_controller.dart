import 'package:get/get.dart';

import '../providers/auth_providers.dart';

class CategoriesToProductScreenController extends GetxController{
  dynamic argumentData = Get.arguments;

  RxList productDetailsList = [].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getProductDetails(argumentData[0]['id']);

  }

  getProductDetails(String id) async{
    try{
      print("ID $id");
      var res = await AuthProvider().getRequest(apiUrl: 'product_by_category/$id');
      print(res.toString());
      productDetailsList.addAll(res['data']);
      print("Categories to product List $productDetailsList");
    }catch(e){}
  }
}
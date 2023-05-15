import 'package:get/get.dart';
import 'package:outlet_91/providers/auth_providers.dart';

class SubCategoriesScreenController extends GetxController{

  dynamic argumentData = Get.arguments;

  RxList subCategoriesList = [].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getSubCategoriesDetails(argumentData[0]['id']);
  }

  getSubCategoriesDetails(String id)  async{
    try{
      var res = await AuthProvider().getRequest(apiUrl: 'category_by_parent/$id');
      // print(res.toString());
      subCategoriesList.addAll(res['data']);
    }catch(e){}
  }
}
import 'dart:convert';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:outlet_91/providers/auth_providers.dart';
import 'package:outlet_91/views/get%20started/mobile_number_screen.dart';
import 'package:outlet_91/views/root.dart';

class SplashController extends GetxController{
  AndroidDeviceInfo? androidDeviceInfo;
  String androidId ='';
  bool loggedIn = false;
  var box = GetStorage();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    goToNextScreen();
  }

  goToNextScreen()async{
    final deviceInfo = DeviceInfoPlugin();
    androidDeviceInfo = await deviceInfo.androidInfo;
    DateTime today = DateTime.now();
    print(today);
    androidId = androidDeviceInfo!.fingerprint+'$today';
    print(androidId);

    // await Future.delayed(const Duration(seconds: 3)).then((value) => guestLogin(androidId));
    if(box.read('guest_login_done')!=null){
      await Future.delayed(const Duration(seconds: 3)).then((value) => Get.offAll(()=>Root()));
    }
    else{
      try{

        var data = {
          "username" : androidId,
          "referal_code" : androidId
        };
        var response = await AuthProvider().postRequest(apiUrl: 'guest_login',data: jsonEncode(data));

        if(response['status']=='OK'){
          box.write('generated_token', response['token']);
          print('Guest login done');
          box.write('guest_login_done', true);
          print(response.toString());
          await Future.delayed(const Duration(seconds: 3)).then((value) => Get.offAll(()=>Root()));
        }
      }catch(e){
        print(e.toString());
      }
    }


  }
  
 guestLogin(String androidId) async{
    try{
      var response = await AuthProvider().postRequest(apiUrl: '8000/guest_login',data: {
        "username" : androidId,
        "referal_code" : androidId
      });

      if(response['status']=='OK'){
        print('Guest login done');
        await Future.delayed(const Duration(seconds: 3)).then((value) => Get.offAll(()=>Root()));

      }
    }catch(e){
      print(e.toString());
    }
  }
}
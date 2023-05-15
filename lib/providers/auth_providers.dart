

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:outlet_91/providers/url.dart';



class AuthProvider extends GetConnect{
  var box = GetStorage();

  Future<dynamic> postRequest({required apiUrl, data = const <String, String>{}})async{
    httpClient.baseUrl = Base_url;
    httpClient.timeout = const Duration(seconds: 240);

    var res = await post(apiUrl, data, headers: {
      'Accept': 'application/json',
    });

    if(res.statusCode == 200 || res.statusCode ==201)
    {
      return res.body;
    }
    else
    {
      return Future.error(res.body);
    }
  }


  Future<dynamic> getRequest(
      {required apiUrl, data = const <String, String>{}, bearerToken}) async
  {
    // print(apiUrl);
    httpClient.baseUrl = Base_url;
    httpClient.timeout = const Duration(seconds: 240);
    // print(box.read('generated_token'));
    var res = await get(apiUrl, query: data, headers: {
      'Authorization': 'Bearer ${box.read('generated_token')}',
      'Accept': 'application/json',
      'Content-Type':'application/json'
    });

    if (res.statusCode == 200 || res.statusCode == 201)
    {
      return res.body;
    }
    else if (res.unauthorized)
    {
      return Future.error(res.body);
    }
    else if (res.statusCode == 404)
    {
      return Future.error(res.body);
    }
    else if (res.statusCode == 500)
    {
      return Future.error(res.body);
    }
    else
    {
      return Future.error('Network Problem');
    }
  }
}
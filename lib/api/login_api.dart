import 'dart:convert';

import 'package:http/http.dart';
import 'package:provider_chacking_ecommerce/api/api_client.dart';
import 'package:provider_chacking_ecommerce/model/loginModel.dart';

class LoginApi{
  ApiClient apiClient = ApiClient();

  Future<LoginModel> getLoginPage({required String email,required String password}) async{
    final body={"identifier":email,"password":password};
    print(body);
    Response response = await apiClient.invokeApi(path: '/api/auth/local',method:  'GET',body:  body);
    return LoginModel.fromJson(jsonDecode(response.body));
  }


  Future<LoginModel> getSignPage( {required String name,required String email,required String password,}) async{
    final body={"identifier":email,"password":password,"Username":name};
    print(body);
    Response response = await apiClient.invokeApi(path: '/api/auth/local/register/',method:  'GET',body:  body);
    return LoginModel.fromJson(jsonDecode(response.body));
  }
}




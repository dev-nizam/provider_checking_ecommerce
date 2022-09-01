import 'package:flutter/material.dart';
import 'package:provider_chacking_ecommerce/api/login_api.dart';
import 'package:provider_chacking_ecommerce/model/loginModel.dart';


class LoginProvider with ChangeNotifier{
  late LoginModel loginModel;
  LoginApi loginApi = LoginApi();

  bool loading =false;

  getSignupApiData({required String email,required String password,required String name}) async{
    loading = true;
    loginModel = await loginApi.getSignPage(email:email, password: password, name: name);
    loading = false;
    notifyListeners();
  }
}





import 'package:flutter/material.dart';
import 'package:provider_chacking_ecommerce/api/login_api.dart';
import 'package:provider_chacking_ecommerce/home/home.dart';
import 'package:provider_chacking_ecommerce/model/loginModel.dart';


class UserProvider with ChangeNotifier{
  late LoginModel loginModel;
   LoginApi loginApi = LoginApi();

  bool loading =false;

  getLoginApiData({required String email,required String password,required BuildContext context }) async{
    // loading = true;
    loginModel = await loginApi.getLoginPage(password: password, email: email);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => Screen_Home(),
      ),
    );
    // loading = false;
    notifyListeners();
  }


  getSignupApiData({required String email,required String password,required String name,required BuildContext context}) async{
    loading = true;
    loginModel = await loginApi.getSignPage(email:email, password: password, name: name);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => Screen_Home(),
      ),
    );
    loading = false;
    notifyListeners();
  }
}
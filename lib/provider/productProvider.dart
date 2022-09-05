

import 'package:flutter/material.dart';
import 'package:provider_chacking_ecommerce/api/login_api.dart';
import 'package:provider_chacking_ecommerce/api/product%20Api.dart';
import 'package:provider_chacking_ecommerce/login/login.dart';
import 'package:provider_chacking_ecommerce/model/loginModel.dart';
import 'package:provider_chacking_ecommerce/model/productmodel.dart';


class ProductProvider with ChangeNotifier{
  late Productmodel productmodel;
  ProductApi productApi = ProductApi();

  bool loading =false;

  getProductPage() async{
    loading = true;
    productmodel = await productApi.getProductPage();
    loading = false;
    notifyListeners();
  }
}
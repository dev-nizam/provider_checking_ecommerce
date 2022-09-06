

import 'package:flutter/material.dart';
import 'package:provider_chacking_ecommerce/api/login_api.dart';
import 'package:provider_chacking_ecommerce/api/product%20Api.dart';
import 'package:provider_chacking_ecommerce/login/login.dart';
import 'package:provider_chacking_ecommerce/model/loginModel.dart';
import 'package:provider_chacking_ecommerce/model/productmodel.dart';

import '../model/GetProductDetails.dart';


class ProductProvider with ChangeNotifier{
   Productmodel productmodel = Productmodel();
 late  GetProductDetails getProductDetails;

  ProductApi productApi = ProductApi();

  bool loading =true;

  getProductPage() async{
    loading = true;
    productmodel = await productApi.getProductPage();
    loading = false;
    notifyListeners();
  }


   getProductDetailsProvider(String productId) async{
     loading = true;
     getProductDetails = await productApi.getProducDetails(productId);
     loading = false;
     notifyListeners();
   }
}
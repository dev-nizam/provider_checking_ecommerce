import 'dart:convert';

import 'package:http/http.dart';
import 'package:provider_chacking_ecommerce/api/api_client.dart';
import 'package:provider_chacking_ecommerce/model/productmodel.dart';

class ProductApi {
  ApiClient apiClient = ApiClient();

  Future<Productmodel> getProductPage() async {
    Response response = await apiClient.invokeApi(
        path: 'products?populate=images', method: 'GET', body: null);
    return Productmodel.fromJson(jsonDecode(response.body));
  }
}

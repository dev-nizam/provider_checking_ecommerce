import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import 'package:provider_chacking_ecommerce/api/api_exception.dart';

class ApiClient{
  static final String basePath = "http://192.168.18.6:1338/api/";
  Future<Response> invokeApi({required String path,required String method,required Object? body}) async{
    Map<String, String> headerparams = {};
    Response response;

    String url = basePath +  path;
    print(url);

    final nullableHeaderParams = (headerparams.isEmpty)?null :headerparams;


    switch (method) {
      case "POST":
        response = await post(Uri.parse(url), headers: {},body: body);
        break;
      case "PUT":
        response = await put(Uri.parse(url), headers: {'content-Type': 'application/json',}, body: body);
        break;
      case "DELETE":
        response = await delete(Uri.parse(url), headers: nullableHeaderParams);
        break;
      case "POST_":
        response = await post(Uri.parse(url), headers:  {},body: body,);
        break;
      case "GET_":
        response = await post(Uri.parse(url), headers:  {},body: body,);
        break;
      default:
        response = await get(Uri.parse(url), headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          "authorization":
              "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTUsImlhdCI6MTY2MTkyNDE4NSwiZXhwIjoxNjY0NTE2MTg1fQ.LtAauoztyc9ted-52p-Oz3YiSZo1HPvA6hoDLcN0Ppk"
        });
    }
    print('status of $path =>' + (response.statusCode).toString());
    print(response.body);
    if (response.statusCode >= 400) {
      log(path +
          ' : ' +
          response.statusCode.toString() +
          ' : ' +
          response.body);

      throw ApiException(
          message: _decodeBodyBytes(response), statusCode: response.statusCode);
    }return response;
  }

  String _decodeBodyBytes(Response response){
    var contentType = response.headers["content-type"];
    if (contentType != null && contentType.contains("application/json")) {
      return jsonDecode(response.body)['message'];
    } else {
      return response.body;
    }
  }
}
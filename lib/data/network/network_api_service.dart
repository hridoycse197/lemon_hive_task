import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:lemon_hive_task/utils/utils.dart';

import '../app_exceptions.dart';
import 'base_api_services.dart';

class NetworkApiService extends BaseApiServices {
  @override
  Future getGetResponse(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      Utils.toastMessage("No Internet Connection");
      throw FetchDataException(" No Internet Connection");
    }
    return responseJson;
  }

  @override
  Future getPostResponse(String url, dynamic data) async {
    dynamic responseJson;
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException(" No Internet Connection");
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response res) {
    switch (res.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(res.body);
        return responseJson;
      case 400:
        throw BadRequestException(res.body.toString());
      case 404:
        throw UnauthorisedException(res.body.toString());
      case 500:
        throw UnauthorisedException(res.body.toString());

      default:
        throw FetchDataException(
            "Error accured while communication with server, statusCode: ${res.statusCode}");
    }
  }
}

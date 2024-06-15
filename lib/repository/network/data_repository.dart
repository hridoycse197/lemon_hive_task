import 'package:lemon_hive_task/utils/helper.dart';

import '../../data/network/base_api_services.dart';
import '../../data/network/network_api_service.dart';
import '../../res/app_url.dart';

class DataRepository {
  final BaseApiServices _baseApiServices = NetworkApiService();

  Future<dynamic> getData() async {
    try {
      dynamic res = await _baseApiServices.getGetResponse(
        AppUrl.dataEndpoint,
      );
      return res;
    } catch (e) {
      kLog(e);
    }
  }

  Future<dynamic> getDataWhenScrolling(String path) async {
    try {
      dynamic res = await _baseApiServices.getGetResponse(
        path,
      );
      return res;
    } catch (e) {
      kLog(e);
    }
  }
}

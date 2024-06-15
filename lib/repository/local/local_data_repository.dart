import 'package:lemon_hive_task/model/data_info_model.dart';
import 'package:lemon_hive_task/utils/isar_keys.dart';

import '../../model/charecter_list_model.dart';
import '../../services/isar_services.dart';
import '../../utils/helper.dart';

class LocalDataRepository {
  final IsarService _isarService = IsarService();

  IsarService get isarService => _isarService;
  Future<dynamic> getLocalData() async {
    try {
      final localdataList = await isarService.getAll<Results>();

      return localdataList;
    } catch (e) {
      kLog(e);
    }
  }

  Future<Info?> getLocalConfig() async {
    Info? info;
    try {
      final localInfo = await isarService.get<Info>(IsarKeys.infokey);
      info = localInfo!;
    } catch (e) {
      kLog(e);
    }
    return info;
  }

  Future<void> saveConfig(Info info) async {
    try {
      info.id = IsarKeys.infokey;
      await isarService.put<Info>(info);
    } catch (e) {
      kLog(e);
    }
  }

  Future<void> puttAll(List<Results> results) async {
    await isarService.putAll(results);
  }
}

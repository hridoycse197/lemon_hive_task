import 'package:flutter/material.dart';
import 'package:lemon_hive_task/model/data_info_model.dart';
import 'package:lemon_hive_task/repository/local/local_data_repository.dart';
import 'package:lemon_hive_task/utils/helper.dart';
import 'package:lemon_hive_task/utils/utils.dart';

import '../model/charecter_list_model.dart';
import '../repository/network/data_repository.dart';

class DataViewModel extends ChangeNotifier {
  final LocalDataRepository _dataRepository = LocalDataRepository();
  final ScrollController scrollController = ScrollController();

  LocalDataRepository get localdataRepository => _dataRepository;
  final _myRepo = DataRepository();
  List<Results> dataList = [];
  Results? selectedItem;
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;
  bool isLoading = false;
  Future<void> setIndex(int index) async {
    _selectedIndex = index;
    notifyListeners();
  }

  void singleItemOnTap(Results item) {
    selectedItem = item;

    setIndex(1);
  }

  Future<void> getData(bool isPagination) async {
    try {
      switch (isPagination) {
        case false:
          _myRepo.getData().then((value) async {
            if (value != null) {
              final data = value["results"]
                  .map((e) => Results.fromJson(e as Map<String, dynamic>))
                  .toList()
                  .cast<Results>();

              final info = Info.fromJson(value["info"]);
              await localdataRepository.saveConfig(info);

              if (data.isNotEmpty) {
                await localdataRepository.puttAll(data);
                dataList.addAll(data);
              }
              notifyListeners();
            }
          }).onError(
            (error, stackTrace) {
              // Utils.toastMessage(error.toString());

              kLog(error);
              kLog(stackTrace);
            },
          );
        case true:
          if (!isLoading) {
            isLoading = true;

            final localInfo = await localdataRepository.getLocalConfig();
            if (localInfo != null && localInfo.next != null) {
              _myRepo.getDataWhenScrolling(localInfo.next!).then((value) async {
                if (value != null) {
                  final data = value["results"]
                      .map((e) => Results.fromJson(e as Map<String, dynamic>))
                      .toList()
                      .cast<Results>();
                  final info = Info.fromJson(value["info"]);
                  await localdataRepository.saveConfig(info);

                  if (data.isNotEmpty) {
                    await localdataRepository.puttAll(data);
                    dataList.addAll(data);
                  }
                  notifyListeners();
                }
              }).onError(
                (error, stackTrace) {
                  Utils.toastMessage(error.toString());

                  kLog(error);
                  kLog(stackTrace);
                },
              );
            } else {
              Utils.toastMessage("No new data");
            }
          }
        default:
      }
    } catch (e) {
      Utils.toastMessage("An error has occured");
      kLog(e);
    } finally {
      isLoading = false;
    }
  }

  Future<List<Results>> getDataFromLocal() async {
    final localdataList = await localdataRepository.getLocalData();
    if (localdataList.isNotEmpty) {
      dataList.addAll(localdataList);
    }
    notifyListeners();
    return dataList;
  }
}



import 'package:isar/isar.dart';
import 'package:lemon_hive_task/model/charecter_list_model.dart';
import 'package:lemon_hive_task/model/data_info_model.dart';
import 'package:path_provider/path_provider.dart';

import '../../../utils/helper.dart';

class IsarService {


  late Isar isar;
IsarService() {
    initIsar();
  }
  final schemaList = [
  InfoSchema,ResultsSchema
  ];

 

  Future<void> initIsar() async {
    try {
      isar = await Isar.open(
        directory: (await getApplicationSupportDirectory()).path,
        schemaList.cast<CollectionSchema>(),
        inspector: true,
      );

      kLog('Isar DB Initialized');
    } catch (e) {
      kError(e);
    }
  }

  // ***---------------*** GET SINGLE ITEM ***---------------

  Future<T?> get<T>(String id) async => isar.writeTxn(
        () async => await isar.collection<T>().get(
              hashId(id),
            ),
      );
  // -------------------------------------------------------------

  // ***---------------*** GET ALL ITEMS WITH OPTIONS - LIMIT & SKIP ***---------------

  Future<List<T>> getAll<T>({int? skip = 0, int? limit}) async => isar.writeTxn(
        () async => await isar
            .collection<T>()
            .where()
            .offset(skip ?? 0)
            .limit(limit ?? 18)
            .findAll(),
      );
  // -------------------------------------------------------------

  // ***---------------*** PUT/ADD ITEM ***---------------

  Future<int> put<T>(T data) async =>
      isar.writeTxn(() async => await isar.collection<T>().put(data));

  // -------------------------------------------------------------

  // ***---------------*** PUT/ADD ALL ITEMS ***---------------

  Future<List<int>> putAll<T>(List<T> data) async =>
      isar.writeTxn(() async => await isar.collection<T>().putAll(data));

  // -------------------------------------------------------------

  // ***---------------*** DELETE ITEM ***---------------

  Future<bool> delete<T>(String id) async =>
      isar.writeTxn(() async => await isar.collection<T>().delete(hashId(id)));

  // -------------------------------------------------------------

  // ***---------------*** DELETE COLLECTION ***---------------

  Future<void> deleteCollection<T>(String id) async =>
      isar.writeTxn(() async => await isar.collection<T>().clear());

  // -------------------------------------------------------------

  // ***---------------*** CHECK CONTAIN ITEM OR NOT ***---------------

  Future<bool> contain<T>(String id) async => isar.writeTxn(() async =>
      (await isar.collection<T>().get(hashId(id)) != null ? true : false));

  // -------------------------------------------------------------

  // ***---------------*** CHECK COLLECTION EMPTY OR NOT ***---------------

  Future<bool> isEmpty<T>() async => isar.writeTxn(
        () async => (await isar.collection<T>().count()) > 0 ? false : true,
      );

  // -------------------------------------------------------------

  // ***---------------*** CHECK LENGTH FROM COLLECTION ***---------------

  Future<int> length<T>() async => isar.writeTxn(
        () async => await isar.collection<T>().count(),
      );

  // -------------------------------------------------------------
}

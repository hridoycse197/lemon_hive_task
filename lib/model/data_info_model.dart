import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:lemon_hive_task/utils/helper.dart';
part 'data_info_model.g.dart';

@collection
@JsonSerializable()
class Info {
  String? id;
  Id get isarid => hashId(id!);
  int? count;
  int? pages;
  String? next;
  String? prev;

  Info({this.count, this.pages, this.next, this.prev});
  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
  Map<String, dynamic> toJson() => _$InfoToJson(this);
}

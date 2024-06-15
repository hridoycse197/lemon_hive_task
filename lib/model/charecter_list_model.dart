import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

import '../utils/helper.dart';
part 'charecter_list_model.g.dart';

@collection
@JsonSerializable()
class Results {
  int? id;
  Id get isarid => hashId(id.toString());

  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  Origin? origin;
  Origin? location;
  String? image;
  List<String>? episode;
  String? url;
  String? created;

  Results(
      {this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.origin,
      this.location,
      this.image,
      this.episode,
      this.url,
      this.created});

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
  Map<String, dynamic> toJson() => _$ResultsToJson(this);
}

@embedded
@JsonSerializable()
class Origin {
  String? name;
  String? url;

  Origin({this.name, this.url});

factory Origin.fromJson(Map<String, dynamic> json) =>
      _$OriginFromJson(json);
  Map<String, dynamic> toJson() => _$OriginToJson(this);
}

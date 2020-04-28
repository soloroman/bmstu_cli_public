import 'package:json_annotation/json_annotation.dart';
part 'group.g.dart';

@JsonSerializable()
class Group {
  Group({this.name, this.url});

  String name; // ИБМ1-22А
  String url;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);

  Map<String, dynamic> toJson() => _$GroupToJson(this);
}
import 'package:json_annotation/json_annotation.dart';
part 'subject.g.dart';

@JsonSerializable(explicitToJson: true)
class Subject{
  Subject({this.denominator, this.numerator, this.timeInterval});
  String timeInterval;
  String denominator; // зн
  String numerator; // чс

  factory Subject.fromJson(Map<String, dynamic> json) => _$SubjectFromJson(json);
  Map<String, dynamic> toJson() => _$SubjectToJson(this);
}
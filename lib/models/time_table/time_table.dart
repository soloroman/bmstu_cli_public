import 'package:html/dom.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test_app/models/time_table/day.dart';
part 'time_table.g.dart';

@JsonSerializable(explicitToJson: true)
class TimeTable{
  TimeTable({this.days, this.htmlElements});

  List<Day> days;
  @JsonKey(ignore: true)
  List<Element> htmlElements;

  Future<TimeTable> fetchChilds() async {
    days = <Day>[];
    for (var i = 0; i < htmlElements.length; ++i) {
      var elements = <Element>[];
      var element = htmlElements[i];
      var day = Day();
      day.day = element.getElementsByClassName('bg-grey')[0].text;
      for (var i = 2; i < element.getElementsByTagName('tr').length; i++) {
        elements.add(element.getElementsByTagName('tr')[i]);
      }
      day.htmlElements = elements;
      await day.fetchChilds();
      days.add(day);
    }
    return this;
  }

  factory TimeTable.fromJson(Map<String, dynamic> json) => _$TimeTableFromJson(json);
  Map<String, dynamic> toJson() => _$TimeTableToJson(this);
}
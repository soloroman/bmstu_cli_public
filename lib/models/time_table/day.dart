import 'package:html/dom.dart';
import 'package:test_app/models/time_table/subject.dart';
import 'package:json_annotation/json_annotation.dart';
part 'day.g.dart';

@JsonSerializable(explicitToJson: true)
class Day{
  Day({this.htmlElements, this.timeIntervals, this.day});
  String day;
  List<Subject> timeIntervals;
  @JsonKey(ignore: true)
  List<Element> htmlElements;

  Future<Day> fetchChilds() async {
    timeIntervals = <Subject>[];
    for (var i = 0; i < htmlElements.length; ++i) {
      var subject = Subject();
      subject.timeInterval = htmlElements[i].getElementsByTagName('td')[0].text;
      if (htmlElements[i].children[1].children.isNotEmpty) {
        subject.numerator = htmlElements[i].getElementsByTagName('td')[1].text;
        if (htmlElements[i].getElementsByTagName('td').length > 2) {
          subject.denominator = htmlElements[i].getElementsByTagName('td')[2].text;
        }
        if (htmlElements[i].getElementsByTagName('td')[1].attributes['colspan'] != null){
          subject.denominator = subject.numerator;
        }
      }
      timeIntervals.add(subject);
    }
    return this;
  }

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
  Map<String, dynamic> toJson() => _$DayToJson(this);
}
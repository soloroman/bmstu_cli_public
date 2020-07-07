import 'package:html/dom.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart';
import 'package:test_app/config.dart' as config;
import 'package:test_app/models/index.dart';

Future<Element> getHtmlGroups() async {
  final response = await http.Client().get(Uri.parse(config.url_groups));
  if (response.statusCode == 200) {
    var document = parse(response.body);
    var list_group = document.getElementsByClassName('list-group');
    return list_group[0];
  } else {
    throw Error();
  }
}

Future<List<Element>> getHtmlTimeTable(url) async {
  final response = await http.Client().get(Uri.parse(url));
  if (response.statusCode == 200) {
    var document = parse(response.body);
    var days = document.getElementsByClassName('col-md-6 hidden-xs');
    return days;
  } else {
    throw Error();
  }
}

void main(List<String> arguments) async {

  // var result = await getHtmlTimeTable('https://students.bmstu.ru/schedule/d2e47842-4aee-11e9-9c17-005056960017')
  // .then((elements) async {
  //   var time_table = TimeTable();
  //   time_table.htmlElements = elements;
  //   await time_table.fetchChilds();
  //   return time_table;
  // });
  // print(result.toJson());

  var response = await getHtmlGroups()
  .then((list_group) async {
    final table = FacultyTable(htmlElement: list_group);
    await table.fetchChild();
    return table;
  });
  print(response.toJson());

  // final response = await http.Client().get(
  //   Uri.parse('https://students.bmstu.ru/profile'),
  //   headers:{
  //       'Cookie': 'connect.sid = s%3AHPSTLn4aIHRxBoJ94wPnhiOEDI6zzk5f.ynFt6%2Fexs7PFtRRLtHyCYZIgzIAHxtScbPT2MAk5HeM;'
  //     }
  //   );
  // if (response.statusCode == 200) {
  //   print(response.body);
  // }else{
  //   print(response.statusCode);
  // }
}
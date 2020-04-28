import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:html/parser.dart';
import 'package:test_app/models/index.dart';
//import 'package:html/dom.dart';

void main(List<String> arguments) async {
  List<Faculty> faculties = List();
  final response = await http.Client().get(Uri.parse('https://students.bmstu.ru/schedule/list'));
  if (response.statusCode == 200) {
    var document = parse(response.body);
    var list_group = document.getElementsByClassName('list-group-item');
    for (var i = 0; i < list_group.length; i++) {
      var el = list_group[i];
      print(el.children[0].text);
      print(el.children[1].text);
    }
  } else {
    throw Error();
  }
}
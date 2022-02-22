import 'dart:convert';

import 'package:hrandsells/data_model/notification_model.dart';
import 'package:http/http.dart' as http;

class fetchnotification {
  var data = [];
  List<Note> results = [];
  String urlList = 'https://flutterapi.brotherdev.com/Sina/notification_api.php';

  Future<List<Note>> getnoteList({String? query}) async {
    var url = Uri.parse(urlList);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {

        data = json.decode(response.body);
        results = data.map((e) => Note.fromJson(e)).toList();
        if (query!= null){
          results = results.where((element) => element.xsubtitle.toLowerCase().contains((query.toLowerCase()))).toList();
        }
      } else {
        print(response.statusCode);
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return results;
  }
}
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:hrandsells/data_model/user_model.dart';

class FetchUserList {
  var data = [];
  List<Userlist> results = [];
  String urlList = 'https://flutterapi.brotherdev.com/syncapi.php';

  Future<List<Userlist>> getuserList({String? query}) async {
    var url = Uri.parse(urlList);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {

        data = json.decode(response.body);
        results = data.map((e) => Userlist.fromJson(e)).toList();
        if (query!= null){
          results = results.where((element) => element.workNote.toLowerCase().contains((query.toLowerCase()))).toList();
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
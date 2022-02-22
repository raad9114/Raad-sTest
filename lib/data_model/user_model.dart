import 'dart:convert';

List<Userlist> userlistFromJson(String str) => List<Userlist>.from(json.decode(str).map((x) => Userlist.fromJson(x)));

String userlistToJson(List<Userlist> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Userlist {
  Userlist({
    required this.id,
    required this.workNote,
  });

  String id;
  String workNote;

  factory Userlist.fromJson(Map<String, dynamic> json) => Userlist(
    id: json["id"],
    workNote: json["workNote"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "workNote": workNote,
  };
}

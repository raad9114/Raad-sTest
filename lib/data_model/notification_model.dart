// To parse this JSON data, do
//
//     final note = noteFromJson(jsonString);

import 'dart:convert';

List<Note> noteFromJson(String str) => List<Note>.from(json.decode(str).map((x) => Note.fromJson(x)));

String noteToJson(List<Note> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Note {
  Note({
    required this.xid,
    required  this.xsubtitle,
    required this.ximage,
    required this.xtitle,
    required this.createdat,
  });

  String xid;
  String xtitle;
  String xsubtitle;
  String ximage;
  DateTime createdat;

  factory Note.fromJson(Map<String, dynamic> json) => Note(
    xid: json["xid"],
    xtitle: json["xtitle"],
    xsubtitle: json["xsubtitle"],
    ximage: json["ximage"],
    createdat: DateTime.parse(json["createdat"]),
  );

  Map<String, dynamic> toJson() => {
    "xid": xid,
    "xtitle": xtitle,
    "xsubtitle": xsubtitle,
    "ximage": ximage,
    "createdat": createdat.toIso8601String(),
  };
}

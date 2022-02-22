// To parse this JSON data, do
//
//     final leaveTourModel = leaveTourModelFromJson(jsonString);

import 'dart:convert';

List<LeaveTourModel> leaveTourModelFromJson(String str) => List<LeaveTourModel>.from(json.decode(str).map((x) => LeaveTourModel.fromJson(x)));

String leaveTourModelToJson(List<LeaveTourModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LeaveTourModel {
  LeaveTourModel({
    //this.id,
    required this.intime,
    required this.outtime,
    required this.inlocation,
    required this.outlocation,
    //this.createdAt,
  });

  //String id;
  String intime;
  String outtime;
  String inlocation;
  String outlocation;
  //DateTime createdAt;

  factory LeaveTourModel.fromJson(Map<String, dynamic> json) => LeaveTourModel(
    //id: json["id"],
    intime: json["intime"],
    outtime: json["outtime"],
    inlocation: json["inlocation"],
    outlocation: json["outlocation"],
    //createdAt: DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    //"id": id,
    "intime": intime,
    "outtime": outtime,
    "inlocation": inlocation,
    "outlocation": outlocation,
    //"created_at": createdAt.toIso8601String(),
  };
}

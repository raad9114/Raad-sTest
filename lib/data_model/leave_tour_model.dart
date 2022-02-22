// // // To parse this JSON data, do
// //
// //     final leaveTourModel = leaveTourModelFromJson(jsonString);
//
// import 'dart:convert';
//
// LeaveTourModel dataModelFromJson(String str) => LeaveTourModel.fromJson(json.decode(str));
//
// List<LeaveTourModel> leaveTourModelFromJson(String str) => List<LeaveTourModel>.from(json.decode(str).map((x) => LeaveTourModel.fromJson(x)));
//
// String leaveTourModelToJson(List<LeaveTourModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// String dataModelToJson(LeaveTourModel data) => json.encode(data.toJson());
//
//
//
// class LeaveTourModel {
//   LeaveTourModel({
//     //required this.id,
//     required this.leaveType,
//     required this.fromDate,
//     required this.toDate,
//     required this.contactNumber,
//     required this.taskAssigntTo,
//     required this.reasonApplicaiton,
//     required this.status,
//    // required this.createdAt,
//   });
//
//  // String id;
//   String leaveType;
//   String fromDate;
//   String toDate;
//   String contactNumber;
//   String taskAssigntTo;
//   String reasonApplicaiton;
//   String status;
//   //DateTime createdAt;
//
//   factory LeaveTourModel.fromJson(Map<String, dynamic> json) => LeaveTourModel(
//     //id: json["id"],
//     leaveType: json["leaveType"],
//     fromDate: json["fromDate"],
//     toDate: json["toDate"],
//     contactNumber: json["contactNumber"],
//     taskAssigntTo: json["taskAssigntTo"],
//     reasonApplicaiton: json["reasonApplicaiton"],
//     //createdAt: DateTime.parse(json["created_at"]),
//     status: json["status"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     //"id": id,
//     "leaveType": leaveType,
//     "fromDate": fromDate,
//     "toDate": toDate,
//     "contactNumber": contactNumber,
//     "taskAssigntTo": taskAssigntTo,
//     "reasonApplicaiton": reasonApplicaiton,
//     //"created_at": "${createdAt.year.toString().padLeft(4, '0')}-${createdAt.month.toString().padLeft(2, '0')}-${createdAt.day.toString().padLeft(2, '0')}",
//     "status": status,
//   };
// }
//
//


// To parse this JSON data, do
//
//     final leaveTourModel = leaveTourModelFromJson(jsonString);

import 'dart:convert';

List<LeaveTourModel> leaveTourModelFromJson(String str) => List<LeaveTourModel>.from(json.decode(str).map((x) => LeaveTourModel.fromJson(x)));

String leaveTourModelToJson(List<LeaveTourModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LeaveTourModel {
  LeaveTourModel({
    //this.id,
    required this.leaveType,
    required this.fromDate,
    required this.toDate,
    required this.contactNumber,
    required this.taskAssigntTo,
    required this.reasonApplicaiton,
    required this.aprovalstatus,
    //this.createdAt,
  });

  //String id;
  String leaveType;
  String fromDate;
  String toDate;
  String contactNumber;
  String taskAssigntTo;
  String reasonApplicaiton;
  String aprovalstatus;
  //DateTime createdAt;

  factory LeaveTourModel.fromJson(Map<String, dynamic> json) => LeaveTourModel(
    //id: json["id"],
    leaveType: json["leaveType"],
    fromDate: json["fromDate"],
    toDate: json["toDate"],
    contactNumber: json["contactNumber"],
    taskAssigntTo: json["taskAssigntTo"],
    reasonApplicaiton: json["reasonApplicaiton"],
    aprovalstatus: json["aprovalstatus"],
    //createdAt: DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    //"id": id,
    "leaveType": leaveType,
    "fromDate": fromDate,
    "toDate": toDate,
    "contactNumber": contactNumber,
    "taskAssigntTo": taskAssigntTo,
    "reasonApplicaiton": reasonApplicaiton,
    "aprovalstatus": aprovalstatus,
    //"created_at": createdAt.toIso8601String(),
  };
}

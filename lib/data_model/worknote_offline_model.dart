class WorkNoteOfflineModel {
  final int? id;
  String workNote;


  WorkNoteOfflineModel(
      { this.id,
        required this.workNote,

      });

  WorkNoteOfflineModel.fromMap(Map<String, dynamic> res)
      : id = res["id"],
        workNote = res["workNote"];





  Map<String, Object?> toMap() {
    return {'id':id,'workNote': workNote};
  }


}

import 'package:hrandsells/data_model/worknote_offline_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHandlerworkNote {
  // Future<Database> initializeDB() async {
  //   String path = await getDatabasesPath();
  //   return openDatabase(
  //     join(path, 'example.db'),
  //     onCreate: (database, version) async {
  //       await database.execute(
  //         "CREATE TABLE addWorkNote(id INTEGER PRIMARY KEY AUTOINCREMENT, leaveType TEXT NOT NULL,fromDate TEXT NOT NULL, toDate TEXT NOT NULL, contactNumber TEXT NOT NULL, taskAssigntTo TEXT NOT NULL, reasonApplicaiton TEXT NOT NULL, createdAt DATE NOT NULL)",
  //       );
  //     },
  //     version: 1,
  //   );
  // }


  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'example.db'),
      onCreate: (database, version) async {
        await database.execute(
          "CREATE TABLE addWorkNote(id INTEGER PRIMARY KEY AUTOINCREMENT, workNote TEXT NOT NULL)",
        );
      },
      version: 1,
    );
  }


  Future<int> insertApplication(List<WorkNoteOfflineModel> applicaiton) async {
    int result = 0;
    final Database db = await initializeDB();
    for(var apply in applicaiton){
      result = await db.insert('addWorkNote', apply.toMap());
    }
    return result;
  }

  Future<List<WorkNoteOfflineModel>> retrieveUsers() async {
    final Database db = await initializeDB();
    final List<Map<String, Object?>> queryResult = await db.query('addWorkNote');
    return queryResult.map((e) => WorkNoteOfflineModel.fromMap(e)).toList();
  }

  Future<void> deleteUser(int id) async {
    final db = await initializeDB();
    await db.delete(
      'addWorkNote',
      where: "id = ?",
      whereArgs: [id],
    );
  }


}
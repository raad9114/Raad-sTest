import 'package:hrandsells/data_model/order_offline_model.dart';
import 'package:hrandsells/data_model/worknote_offline_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHandlerOrder {
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


  Future<Database> initializeDBwork() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'example.db'),
      onCreate: (database, version) async {
        await database.execute(
          "CREATE TABLE order(id INTEGER PRIMARY KEY AUTOINCREMENT, product TEXT NOT NULL, quantity TEXT NOT NULL)",
        );
      },
      version: 1,
    );
  }

  Future<int> insertApplication(List<OrderOfflineModel> applicaiton) async {
    int result = 0;
    final Database db = await initializeDBwork();
    for(var apply in applicaiton){
      result = await db.insert('order', apply.toMap());
    }
    return result;
  }

  Future<List<OrderOfflineModel>> retrieveUsers() async {
    final Database db = await initializeDBwork();
    final List<Map<String, Object?>> queryResult = await db.query('order');
    return queryResult.map((e) => OrderOfflineModel.fromMap(e)).toList();
  }

  Future<void> deleteUser(int id) async {
    final db = await initializeDBwork();
    await db.delete(
      'order',
      where: "id = ?",
      whereArgs: [id],
    );
  }


}
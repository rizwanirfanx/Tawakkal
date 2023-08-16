import 'package:hey_taxi/Helpers/DB.dart';
import 'package:hey_taxi/Models/User.dart';
import 'package:sqflite/sqflite.dart';

class UserRepo {
  static Future<int> insertUser(User user) async {
    Database db = await DatabaseHelper().openDatabaseConnection();
    int result = await db.insert('users', user.toMap());
		print(result);
    await db.close();
		return result;
  }

  Future<String> getUser({int? id, String? email}) async {
    Database db = await DatabaseHelper().openDatabaseConnection();
    List<Map> user = await db.query('users', where: 'id = ?', whereArgs: [id]);
    if (user.isNotEmpty) {
      return 'success';
    }
    return 'failure to get User Data';
  }

  static Future<void> users() async {
    Database db = await DatabaseHelper().openDatabaseConnection();

    final List<Map<String, dynamic>> maps = await db.query('users');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    var users = List.generate(maps.length, (i) {
      return User(
        password: maps[i]['password'],
        firstName: maps[i]['first_name'],
        lastName: maps[i]['last_name'],
        email: maps[i]['email'],
      );
    });
  }
}

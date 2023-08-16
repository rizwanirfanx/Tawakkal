import 'package:flutter/material.dart';
import 'package:hey_taxi/Models/User.dart';
import 'dart:developer';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class UserListScreen extends StatefulWidget {
	const UserListScreen({super.key});
  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    Database db = await openDatabase(join(await getDatabasesPath(), 'my_database.db'));

    final List<Map<String, dynamic>> maps = await db.query('users');
		print(maps.toString());
		log(maps.toString());
		log('Hello World');

    setState(() {
      users = List.generate(maps.length, (i) {
        return User(
          password: maps[i]['password'],
          firstName: maps[i]['first_name'],
          lastName: maps[i]['last_name'],
          email: maps[i]['email'],
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            title: Text(user.toString()),
            subtitle: Text(user.lastName),
            trailing: Text(user.password),
          );
        },
      ),
    );
  }
}



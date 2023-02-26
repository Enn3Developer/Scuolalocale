import 'package:flutter/material.dart';
import 'package:school_link/data/user_data.dart';
import 'package:school_link/pages/login.dart';

void main() {
  Accounts.getInstance().addAccount("user", "pass");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Link',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const LoginPage(),
    );
  }
}

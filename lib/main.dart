import 'package:flutter/material.dart';
import 'package:rest_api_json_/screens/album_screen.dart';
import 'package:rest_api_json_/screens/comment_screen.dart';
import 'package:rest_api_json_/screens/home_screen.dart';
import 'package:rest_api_json_/screens/photo_screen.dart';
import 'package:rest_api_json_/screens/user_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home:PostScreen(),
      home: UserScreen(),
    );
  }
}

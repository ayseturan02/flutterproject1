import 'package:flutter/material.dart';
import 'package:flutterproject1/constants/color.dart';
import 'package:flutterproject1/screens/home.dart';
import 'package:flutterproject1/todoitem.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context){
      return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScree()
      );
  }
}
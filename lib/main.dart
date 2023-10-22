import 'package:flutter/material.dart';
import 'package:flutterproject1/constants/color.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    double deviceHeight=MediaQuery.of(context).size.height;
    double deviceWidth=MediaQuery.of(context).size.width;
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
       child: Scaffold(
         backgroundColor: HexColor(backgroundColor),
        body: Container(
          width: deviceWidth,
          height: deviceHeight / 3,
          decoration: const BoxDecoration(
            color: Colors.purple,
            image: DecorationImage(
                image: AssetImage("lib/assets/images/Header.png"),
                fit: BoxFit.cover,  //bu fotoyu belirtilrn tüm alana sığdırmay çalıştı
            ),
          ),
          child: const Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text("october 2,2022",style: TextStyle(color:Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                  child: Text("My todo List App",style: TextStyle(color:Colors.white, fontSize: 35, fontWeight: FontWeight.bold),)),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutterproject1/constants/color.dart';
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
    double deviceHeight=MediaQuery.of(context).size.height;
    double deviceWidth=MediaQuery.of(context).size.width;

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
       child: Scaffold(
         backgroundColor: HexColor(backgroundColor),
        body: Column(
          children: [
            //header
            Container(
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
                    child: Text("My Todo List",style: TextStyle(color:Colors.white, fontSize: 35, fontWeight: FontWeight.bold),)),
              ],
            ),
          ),
             //top Column
             Expanded(
                 child: Padding(
                   padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                   child: SingleChildScrollView(  //Aşagı gitmey yarıyor ekran kaydırma expanded yazmayı unutma
                     child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                          ),
                           child: Padding(
                             padding: const EdgeInsets.all(20),
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  "Study Lessons",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21,
                                ),
                                ),
                                Checkbox(value: isChecked, onChanged: (val) => {
                                    setState((){
                                      isChecked=val!;  // ! val değişkeni varsa işleme koy
                                    })
                                })
                              ],
                          ),
                           ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  "Study Lessons",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21,
                                  ),
                                ),
                                Checkbox(value: isChecked, onChanged: (val) => {
                                  setState((){
                                    isChecked=val!;  // ! val değişkeni varsa işleme koy
                                  })
                                })
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  "Study Lessons",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21,
                                  ),
                                ),
                                Checkbox(value: isChecked, onChanged: (val) => {
                                  setState((){
                                    isChecked=val!;  // ! val değişkeni varsa işleme koy
                                  })
                                })
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  "Study Lessons",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21,
                                  ),
                                ),
                                Checkbox(value: isChecked, onChanged: (val) => {
                                  setState((){
                                    isChecked=val!;  // ! val değişkeni varsa işleme koy
                                  })
                                })
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  "Study Lessons",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21,
                                  ),
                                ),
                                Checkbox(value: isChecked, onChanged: (val) => {
                                  setState((){
                                    isChecked=val!;  // ! val değişkeni varsa işleme koy
                                  })
                                })
                              ],
                            ),
                          ),
                        ),
                      ],
                     ),
                   ),
                 ),
               ),
            //DRY ->Don't Repeat yourself //Completed Text
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child:  Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Completed",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,),
              ),
            ),
        ),
            //Bottom Column
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: SingleChildScrollView(  //Aşagı gitmeye yarıyor ekran kaydırma expanded yazmayı unutma
                  child: Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.notes_outlined,
                                size: 50,
                              ),
                              const Text(
                                "Study Lessons",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                ),
                              ),
                              Checkbox(value: isChecked, onChanged: (val) => {
                                setState((){
                                  isChecked=val!;  // ! val değişkeni varsa işleme koy
                                })
                              })
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.notes_outlined,
                                size: 50,
                              ),
                              const Text(
                                "Study Lessons",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                ),
                              ),
                              Checkbox(value: isChecked, onChanged: (val) => {
                                setState((){
                                  isChecked=val!;  // ! val değişkeni varsa işleme koy
                                })
                              })
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.notes_outlined,
                                size: 50,
                              ),
                              const Text(
                                "Study Lessons",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                ),
                              ),
                              Checkbox(value: isChecked, onChanged: (val) => {
                                setState((){
                                  isChecked=val!;  // ! val değişkeni varsa işleme koy
                                })
                              })
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.notes_outlined,
                                size: 50,
                              ),
                              const Text(
                                "Study Lessons",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                ),
                              ),
                              Checkbox(value: isChecked, onChanged: (val) => {
                                setState((){
                                  isChecked=val!;  // ! val değişkeni varsa işleme koy
                                })
                              })
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.notes_outlined,
                                size: 50,
                              ),
                              const Text(
                                "Study Lessons",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                ),
                              ),
                              Checkbox(value: isChecked, onChanged: (val) => {
                                setState((){
                                  isChecked=val!;  // ! val değişkeni varsa işleme koy
                                })
                              })
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Text("Add New Task"),
            )
         ],
        ),
      ),
      ),
    );
  }
}

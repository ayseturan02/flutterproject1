import 'package:flutter/material.dart';
import 'package:flutterproject1/constants/color.dart';
import 'package:hexcolor/hexcolor.dart';

class AddNewTaskScreen extends StatelessWidget{
  const AddNewTaskScreen({super.key});

  @override
  Widget build(BuildContext context){
    double deviceHeight=MediaQuery.of(context).size.height;
    double deviceWidth=MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor(backgroundColor),
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: deviceWidth,
                height: deviceHeight/10,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                    image: DecorationImage(
                        image:
                        AssetImage("lib/assets/images/Header1.png"),
                        fit: BoxFit.cover),
                ),
                child: Row(
                  children: [
                    IconButton(onPressed: () {
                      Navigator.of(context).pop();
                      },
                        icon: const Icon(
                          Icons.close,
                          size: 40,
                          color: Colors.white,
                        ),
                    ),
                    const Expanded(
                        child: Text(
                          "Add new task",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 21 ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text("Task title")),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: TextField(decoration: InputDecoration(filled: true, fillColor: Colors.white),
                ),
              ),
               Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Category"),
                    GestureDetector( //dokunuşları kontrol eder
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration:Duration(milliseconds: 300),
                        content: Text("Category Selected"),
                    ),
                  );
                },
                      child: Image.asset("lib/assets/images/Category.png"),
                    ),
                    GestureDetector( //dokunuşları kontrol eder
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration:Duration(milliseconds: 300),
                            content: Text("Category Selected"),
                          ),
                        );
                      },
                      child: Image.asset("lib/assets/images/Category1.png"),
                    ),
                    GestureDetector( //dokunuşları kontrol eder
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration:Duration(milliseconds: 300),
                            content: Text("Category Selected"),
                          ),
                        );
                      },
                      child: Image.asset("lib/assets/images/Category2.png"),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding:EdgeInsets.only(top: 10),
                child: const Row(
                  children: [
                      Expanded(
                      child: Column(
                        children: [
                          Text("Date"),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                    filled: true,fillColor: Colors.white),
                              ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text("Time"),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                    filled: true,fillColor: Colors.white),
                              ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const  Text("Notes"),
              const SizedBox(
                height: 300,
                child: TextField(
                  expands: true,
                  maxLines: null,
                  decoration: InputDecoration(
                      filled: true,fillColor: Colors.white, isDense: true),
                ),
              ),
             ElevatedButton(onPressed: () {}, child: Text("Save"))
            ],
          ),
        )
      ),
    );
  }
}
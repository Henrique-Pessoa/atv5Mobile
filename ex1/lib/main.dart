
import 'package:flutter/material.dart';
import 'package:ex1/Consultancy.dart';
import 'package:ex1/Elaboration.dart';
import 'package:ex1/Project.dart';


void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("SM Mobile"),
        ),
        body: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(10),
                child:ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  Consultancy()));
                      print("ok");
                    },
                    child: Text("Consultoria")),),
                                Padding(padding: EdgeInsets.all(10),
                child:ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  Elaboration()));
                      print("ok");
                    },
                    child: Text("Elaboração")),),
                               Padding(padding: EdgeInsets.all(10),
                child:ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  Project()));
                      print("ok");
                    },
                    child: Text("Projetos")),),
                ],
              ),
            ),
          ],
        ),
      );
    
  }
}
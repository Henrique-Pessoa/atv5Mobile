import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Projeto"),
      ),
     body:  Column(
      crossAxisAlignment:CrossAxisAlignment.center,
      children: [
        const Padding(padding: EdgeInsets.only(bottom: 50,top:10,left: 50),
        child: Text("Portifolio",style: TextStyle(fontSize: 50,color: Colors.black),),),
        Padding(padding: const EdgeInsets.only(bottom: 20,top:20,left: 50),
        child:Image.network("https://logodownload.org/wp-content/uploads/2017/05/ifood-logo.png",width: 300,),),
        Padding(padding: const EdgeInsets.only(bottom: 20,top:20,left: 50),
        child:Image.network("https://pngimg.com/d/uber_PNG24.png",width: 300,))
      ],
    
     ),

      );
    
  }}
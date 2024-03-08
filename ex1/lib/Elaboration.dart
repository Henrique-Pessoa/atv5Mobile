import 'package:flutter/material.dart';

class Elaboration extends StatefulWidget {
  const Elaboration({super.key});

  @override
  State<Elaboration> createState() => _ElaborationState();
}

class _ElaborationState extends State<Elaboration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Elaboração"),
      ),
     body: Column(
      children: [
        Text("Elaborado pelo senai",style: TextStyle(fontSize: 40,color: Colors.red),)

        
      ],
     ),

      );
    
  }}
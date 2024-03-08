import 'package:flutter/material.dart';

class Consultancy extends StatefulWidget {
  const Consultancy({super.key});

  @override
  State<Consultancy> createState() => _ConsultancyState();
}

class _ConsultancyState extends State<Consultancy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consultoria"),
      ),
     body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsets.only(top: 10,left: 100),child: Text("Preços",style: TextStyle(fontSize: 50,color: Colors.black),),),
        Padding(padding: EdgeInsets.only(top: 0,left: 100),child: Image.network("https://www.simple.org/images/screen-bp.png",width: 200,),),
        Padding(padding: EdgeInsets.only(top: 0,left: 100),child: Text("Tela simples: 20 reais",style: TextStyle(fontSize: 20,color: Colors.black),),),
        Padding(padding: EdgeInsets.only(top: 0,left: 100),child: Image.network("https://i.pinimg.com/originals/5a/0e/47/5a0e472802026b715fb00086e005d035.png",width: 200,),),
        Padding(padding: EdgeInsets.only(top: 0,left: 100),child: Text("Multiplas telas: 50 reais",style: TextStyle(fontSize: 20,color: Colors.black),),),
      ],
     ),

      );
    
  }}
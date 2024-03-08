import 'package:flutter/material.dart';

class Calcule extends StatefulWidget {
  const Calcule({super.key});

  @override
  State<Calcule> createState() => _CalculeState();
}

class _CalculeState extends State<Calcule> {
  final TextEditingController _value = TextEditingController();
  double _total = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cacular conta"),
      ),
     body: Column(
      children: [
             Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Kilowatts total"),
                style: const TextStyle(fontSize: 20),
                controller:_value ,
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                _total = double.parse(_value.text) * 0.65;
                print(_total);
              });
            }, child: const Text("Calcular")),
            Text("Total em reais: "+_total.toStringAsFixed(2))
      ],
     ),

      );
    
  }
}
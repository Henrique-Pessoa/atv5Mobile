import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _timeTorno = TextEditingController();
  final TextEditingController _useTorno = TextEditingController();
  final TextEditingController _timeFresa = TextEditingController();
  final TextEditingController _useFresa = TextEditingController();
  double _totalTorno = 0.0;
  double _totalFresa = 0.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:  
      SingleChildScrollView(child:Column(children: [
        Padding(padding: const EdgeInsets.all(5),child:Column(
          children: [
            const Text("Torno",style:TextStyle(fontSize: 30),),
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Tempo de utilização"),
                style: const TextStyle(fontSize: 20),
                controller: _timeTorno,
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Consumo em W"),
                style: const TextStyle(fontSize: 20),
                controller: _useTorno,
              ),
            ),
        Text("$_totalTorno"),
        ElevatedButton(onPressed: (){
          setState(() {
            _totalTorno = double.parse(_timeTorno.text) * double.parse(_useTorno.text) * 30;
          });
        }, child: const Text("Calcular"))
          ],
        )),
        Padding(padding: const EdgeInsets.all(5),child:Column(
          children: [
            const Text("Fresa",style:TextStyle(fontSize: 30),),
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Tempo de utilização"),
                style: const TextStyle(fontSize: 20),
                controller: _timeFresa,
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Consumo em W"),
                style: const TextStyle(fontSize: 20),
                controller: _useFresa,
              ),
            ),
        Text("$_totalFresa"),
        ElevatedButton(onPressed: (){
          setState(() {
            _totalFresa = double.parse(_timeFresa.text) * double.parse(_useFresa.text) * 30;
          });
        }, child: const Text("Calcular")),
          ],
        )),
        ])
    ));
  }
}
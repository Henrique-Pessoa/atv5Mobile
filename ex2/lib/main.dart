import 'package:flutter/material.dart';

/// Flutter code sample for [AnimatedContainer].

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AnimatedContainer Sample')),
        body: const AnimatedContainerExample(),
      ),
    );
  }
}

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 100.0 : 400.0,
          height: selected ? 100.0 : 1000.0,
          duration: const Duration(seconds: 1),
          child: selected? Image.network("https://static.wixstatic.com/media/0217a7_83ce795feeaa42ba8deff7c2189d43f8~mv2.png/v1/fill/w_468,h_626,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/SENNA.png"):Image.("https://cdn.sportmonks.com/images/f1/drivers/lewishamilton.png"),
        ),
      ),
    );
  }
}
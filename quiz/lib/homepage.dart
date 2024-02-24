import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Spectrum Score')),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'TDAH');
                },
                style: ElevatedButton.styleFrom(
                  // ignore: prefer_const_constructors
                  padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                ),
                // ignore: prefer_const_constructors
                child: Text('ASRS-18', style: const TextStyle(fontSize: 25)),
            )
          ]),
        ),
      )
    );
  }
}
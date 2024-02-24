// ignore_for_file: sort_child_properties_last, avoid_print, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';

class Tdah extends StatefulWidget {
  const Tdah({Key? key}) : super(key: key);

  @override
  _TdahState createState() => _TdahState();
}

class _TdahState extends State<Tdah> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Spectrum Score')),
        ),

        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center (
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              const Text('pergunda'),

              ElevatedButton(
                onPressed: () {
                  print('precionado');
                },
                child: Text('resposta 1', style: const TextStyle(fontSize: 25)),
                style: ElevatedButton.styleFrom(
                padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  print('precionado');
                },
                child: const Text('resposta 2', style: TextStyle(fontSize: 25)),
                style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  print('precionado');
                },
                child: Text('resposta 3', style: const TextStyle(fontSize: 25)),
                style: ElevatedButton.styleFrom(
                padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  print('precionado');
                },
                child: Text('resposta 4', style: const TextStyle(fontSize: 25)),
                style: ElevatedButton.styleFrom(
                padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                ),
              ),
              ])
            )
          ),
        ),
      );
  }

  ElevatedButton newMethod() {
    return ElevatedButton(
              onPressed: () {
                print('precionado');
              },
              child: Text('resposta 1', style: const TextStyle(fontSize: 25)),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
            ),
          );
  }
}
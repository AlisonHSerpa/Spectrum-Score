// ignore_for_file: sort_child_properties_last, avoid_print,
// library_private_types_in_public_api, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:quiz/Resultado.dart';

class Tdah extends StatefulWidget {
  const Tdah({Key? key}) : super(key: key);

  @override
  _TdahState createState() => _TdahState();
}

class _TdahState extends State<Tdah> {
  @override
  Widget build(BuildContext context) {
    List quiz = [
      {
        //precisa concertar o algoritmo, use o for pra a resposta correta
        //precisamos poder selecionar mais de uma resposta certa
        'pergunta': "Quanto é a raiz de 1 ?",
        'respostas': [
          '1',
          '-1',
          '2',
          '3',
        ],
        'alternativa correta': 1,
      }
    ];

    int perguntaNumero = 1;
    int acertos = 0;

    void respondeu(int respostaNumero) {
      setState(() {
        if (quiz[perguntaNumero - 1]["alternativa correta"] == respostaNumero) {
          print("acertou");
          acertos++;
        }

        if (perguntaNumero == 1) {
          Navigator.pushNamed(context, "Resultado",
              arguments: Argumentos(acertos));
        } else {
          perguntaNumero++;
        }
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Spectrum Score')),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  Text('pergunta $perguntaNumero de 10'),
                  Text(quiz[perguntaNumero - 1]['pergunta']),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        print('pressionado');
                        respondeu(1);
                      },
                      child: Text(quiz[perguntaNumero - 1]["respostas"][0],
                          style: TextStyle(fontSize: 25)),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        print('pressionado');
                        respondeu(1);
                      },
                      child: Text(quiz[perguntaNumero - 1]["respostas"][1],
                          style: TextStyle(fontSize: 25)),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        print('pressionado');
                        respondeu(1);
                      },
                      child: Text(quiz[perguntaNumero - 1]["respostas"][2],
                          style: TextStyle(fontSize: 25)),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        print('pressionado');
                        respondeu(0);
                      },
                      child: Text(quiz[perguntaNumero - 1]["respostas"][3],
                          style: TextStyle(fontSize: 25)),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                      ),
                    ),
                  ),
                ]))),
      ),
    );
  }

  ElevatedButton newMethod() {
    return ElevatedButton(
      onPressed: () {
        print('pressionado');
      },
      child: const Text('resposta 1', style: TextStyle(fontSize: 25)),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
      ),
    );
  }
}

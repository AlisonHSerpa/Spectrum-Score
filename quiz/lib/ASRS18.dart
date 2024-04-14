// ignore_for_file: sort_child_properties_last, avoid_print,
// library_private_types_in_public_api, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:quiz/Resultado.dart';
import 'package:quiz/quiz_dados.dart';

class Tdah extends StatefulWidget {
  const Tdah({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TdahState createState() => _TdahState();
}

class _TdahState extends State<Tdah> {
  @override
  Widget build(BuildContext context) {
    int perguntaNumero = 1;
    int acertos = 0;

    //metodo que procura se a resposta eh certa e passa para a proxima pergunta
    void respondeu(String resposta) {
      setState(() {
        for (var item in quiz) {
          List<String> alternativasCorretas = item["alternativa correta"]!;
          for (var alternativa in alternativasCorretas) {
            if (alternativa.toLowerCase().contains(resposta.toLowerCase())) {
              print("acertou");
              acertos++;
              break;
            }
          }
        }

        //deveria passar para a proxima pergunta [nao ta funcionando]
        if (perguntaNumero == 18) {
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
                  //enunciado da pergunta
                  Text('pergunta $perguntaNumero de 10'),
                  Text(quiz[perguntaNumero - 1]['pergunta']),
                  SizedBox(
                    width: double.infinity,

                    //primeira alternativa
                    child: ElevatedButton(
                      onPressed: () {
                        print('pressionado');
                        respondeu(quiz[perguntaNumero - 1]["respostas"][0]);
                      },
                      child: Text(quiz[perguntaNumero - 1]["respostas"][0],
                          style: const TextStyle(fontSize: 25)),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,

                    //segunda alternativa
                    child: ElevatedButton(
                      onPressed: () {
                        print('pressionado');
                        respondeu(quiz[perguntaNumero - 1]["respostas"][1]);
                      },
                      child: Text(quiz[perguntaNumero - 1]["respostas"][1],
                          style: const TextStyle(fontSize: 25)),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,

                    //terceira alternativa
                    child: ElevatedButton(
                      onPressed: () {
                        print('pressionado');
                        respondeu(quiz[perguntaNumero - 1]["respostas"][2]);
                      },
                      child: Text(quiz[perguntaNumero - 1]["respostas"][2],
                          style: const TextStyle(fontSize: 25)),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,

                    //quarta altternativa
                    child: ElevatedButton(
                      onPressed: () {
                        print('pressionado');
                        respondeu(quiz[perguntaNumero - 1]["respostas"][3]);
                      },
                      child: Text(quiz[perguntaNumero - 1]["respostas"][3],
                          style: const TextStyle(fontSize: 25)),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,

                    //quinta alternativa
                    child: ElevatedButton(
                      onPressed: () {
                        print('pressionado');
                        respondeu(quiz[perguntaNumero - 1]["respostas"][4]);
                      },
                      child: Text(quiz[perguntaNumero - 1]["respostas"][4],
                          style: const TextStyle(fontSize: 25)),
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

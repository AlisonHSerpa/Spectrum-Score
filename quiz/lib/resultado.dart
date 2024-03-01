import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  static const routename = 'Resultado';

  const Resultado({super.key});

  @override
  Widget build(BuildContext context) {
    final argumentos = ModalRoute.of(context)?.settings.arguments as Argumentos;

    String resposta(int acertos) {
      if (acertos == 1) {
        return "voce provavelmente esta dentro do grupo de adultos com TDAH";
      } else {
        return "voce provavelmente nao esta incluido no grupo de adultos com TDAH";
      }
    }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Resultado')),
      ),
      body: Center(
        child: Column(children: [
          Text(resposta(argumentos.acertos)),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            style: ElevatedButton.styleFrom(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
            ),
            // ignore: prefer_const_constructors
            child: Text('Voltar para o menu',
                style: const TextStyle(fontSize: 25)),
          )
        ]),
      ),
    ));
  }
}

class Argumentos {
  int acertos = 0;
  Argumentos(this.acertos);
}

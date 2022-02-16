import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

@override
class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });
  bool get temPerguntaSeleconada {
    return perguntaSelecionada < perguntas.length;
  }

  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSeleconada
        ? perguntas[perguntaSelecionada].cast()['respostas']
        : [];
    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((resp){
          return Resposta(
            resp['texto'].toString(),
            () => responder(int.parse(resp['nota'].toString())),
          );
        }).toList(),

      ],
    );
  }
}

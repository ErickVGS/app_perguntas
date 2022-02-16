import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  
final int pontuacao;
final void Function() quandoReinicarQuestionario;

Resultado(this.pontuacao,this.quandoReinicarQuestionario);

String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi';
    }
  }


@override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          fraseResultado,
          style: TextStyle(fontSize: 28),
        )
        ),
        // ignore: deprecated_member_use, prefer_const_constructors
         FlatButton(
          child: const Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18),
            
            ),
          
          textColor: Colors.blue, 
           onPressed: quandoReinicarQuestionario,

          )

      ],
    );
  }


  
}
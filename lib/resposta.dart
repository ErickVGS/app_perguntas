import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String R1;
  final void Function() quandoSelecionado;
  
  
  Resposta(this.R1, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          onSurface: Colors.green,
          elevation: 20,
          shadowColor: Colors.red,
        ),
        child: Text(R1),
        onPressed: quandoSelecionado,
      ),
    );
  }

}

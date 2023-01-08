import 'package:flutter/material.dart';
import 'dropmenu.dart';

class ActionAppMain extends StatefulWidget {
  const ActionAppMain({super.key});

  @override
  State<ActionAppMain> createState() => _ActionAppMainState();
}

class _ActionAppMainState extends State<ActionAppMain> {
  //CONTROLLER DO TXT LABEL
  final numDigitado = TextEditingController();

//FUNCAO SE O PRIMEIRO BOTAO FOR CENTIMETRO
  double fnCmToMeters() {
    final numInput = double.tryParse(numDigitado.text);
    if (dropdownValue == 'centimetros (cm)') {
      //DIVIDIR VALOR DIGITADO POR CEM
      var valorTotal = (numInput!) / 100;
      return valorTotal;
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Padding(padding: EdgeInsets.only(left: 25)),
            //'FROM' WORD
            Text(
              'From:',
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            //ESPACO
            Spacer(),
            //BOTAO TIPOS DE MEDIDA
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: DuduDropMenu(),
            )
          ],
        ),
        //ESPACO
        const SizedBox(height: 15),
        //RECEBEDOR DO NUMERO
        TextField(
          keyboardType: const TextInputType.numberWithOptions(),
          controller: numDigitado,
          decoration: const InputDecoration(
            filled: true,
            fillColor: Colors.white,
          ),
        ),
        //ESPACO
        const SizedBox(height: 15),
        Row(
          children: const [
            //'TO' WORD
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'To:',
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            //ESPACO
            Spacer(),
            //BOTAO TIPOS DE MEDIDA
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: DuduDropMenu(),
            )
          ],
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}

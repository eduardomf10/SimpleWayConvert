import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String dropdownValue = tiposMedidasLista.first;

const List<String> tiposMedidasLista = [
  'centimetros (cm)',
  'kilogramas (kg)',
  'pounds (lb)',
  'gramas (g)',
  'metros (m)',
  'kilometros (km)',
];

class DuduDropMenu extends StatefulWidget {
  const DuduDropMenu({super.key});

  @override
  State<DuduDropMenu> createState() => _DuduDropMenuState();
}

class _DuduDropMenuState extends State<DuduDropMenu> {
  //String dropdownValue = tiposMedidasLista.first;

  fnOnChanged(String? value) {
    setState(() {
      dropdownValue = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        onChanged: fnOnChanged,
        items: tiposMedidasLista.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            //alignment: Alignment.center,
            value: value,
            child: Text(value,
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                )),
          );
        }).toList(),
      ),
    );
  }
}

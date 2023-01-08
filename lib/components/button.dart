import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConvertButton extends StatelessWidget {
  const ConvertButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: ElevatedButton(
        onPressed: null,
        style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
        child: Text(
          'Convert',
          style: GoogleFonts.oswald(
              fontWeight: FontWeight.w400, fontSize: 30, color: Colors.black),
        ),
      ),
    );
  }
}

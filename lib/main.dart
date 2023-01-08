import 'package:brincandoproject/components/action.dart';
import 'package:brincandoproject/components/button.dart';
import 'package:brincandoproject/components/title.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const ConverterSideApp());
}

class ConverterSideApp extends StatelessWidget {
  const ConverterSideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 210, 210, 210),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: const <Widget>[
                MyTitle(),
                ActionAppMain(),
                ConvertButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

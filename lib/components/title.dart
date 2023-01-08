import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(left: 25, top: 55),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: const [
              Text(
                'Simple',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Way',
                style: TextStyle(
                  fontSize: 38,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Text(
            'toConvert',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 77, 77, 77)),
          ),
          const SizedBox(height: 50)
        ],
      ),
    );
  }
}

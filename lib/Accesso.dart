

import 'package:flutter/material.dart';

class Accesso extends StatefulWidget{
  const Accesso({Key? key}) : super(key: key);

  @override
  State<Accesso> createState() => _Accesso();
}

class _Accesso extends State<Accesso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);

          },
          child: const Text('Go back!'),

        ),

      ),
    );
  }

}
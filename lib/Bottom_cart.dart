import 'package:demo_flutter/utils/MyColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Bottom_cart extends StatefulWidget{
  const Bottom_cart({Key? key}) : super(key: key);

  @override
  State<Bottom_cart> createState() => _Bottom_cart();
}

class _Bottom_cart extends State<Bottom_cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Cart', style: TextStyle(fontWeight: FontWeight.bold, color: MyColor.primary_bule, fontSize: 25),),
        elevation: 0.0,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            SystemNavigator.pop();

          },
          child: const Text('Go back!'),

        ),

      ),
    );

  }

}
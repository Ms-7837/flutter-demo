import 'package:demo_flutter/utils/MyColor.dart';
import 'package:flutter/material.dart';

class Dental extends StatefulWidget {
   Dental({Key? key}) : super(key: key);

  @override
  State<Dental> createState() => _DentalState();

}

class _DentalState extends State<Dental> {
  final int _selectedIndex = 0;
  List DentalSupply = [
    {
      'name': 'Zhermack',
      'image': 'assets/ZHERMACK.png',
    },
    {
      'name': 'Aidal plus',
      'image': 'assets/AIDAL PLUS.png',
    },
    {
      'name': 'Aqium hand gel',
      'image': 'assets/AQIUM HAND GEL.png',
    },
    {
      'name': 'Bactol alcohol gel',
      'image': 'assets/BACTOL ALCOHOL GEL.png',
    },
    {
      'name': 'Bd hypodermic needless ',
      'image': 'assets/BD HYPODERMIC NEEDLESS.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:0.0,
        backgroundColor: Colors.white,
        foregroundColor: MyColor.primary_bule,
        centerTitle: true,
        title: const Text("Dental Supply",style: TextStyle(
            fontWeight: FontWeight.bold,
            color: MyColor.primary_bule,
            fontSize: 20),),
      ),
      body: GridView.builder(
        itemCount: 5,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: GridTile(
              footer: Text( DentalSupply[index]['name']),
              child: Image.asset(DentalSupply[index]['image']), //just for testing, will fill with image later
            ),
          );
        },
      ),
    );

  }

}




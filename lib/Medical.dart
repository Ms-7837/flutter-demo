import 'package:demo_flutter/utils/MyColor.dart';
import 'package:flutter/material.dart';

class Medical extends StatefulWidget {
  const Medical({Key? key}) : super(key: key);

  @override
  State<Medical> createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {
  final int _selectedIndex = 0;
  List MedicalSupply =[
    {
      'name' : 'Desiccator',
      'image' : 'assets/DESICCATOR.png',
    },
    {
      'name' : 'Diagnostics',
      'image' :  'assets/DIAGNOSTICS.png',
    },
    {
      'name' : 'Ecg accessories',
      'image' : 'assets/ECG ACCESSORIES.png',
    },
    {
      'name' : 'Dressings',
      'image' : 'assets/DRESSINGS.png',
    },
    {
      'name' : 'Dressing strips',
      'image' : 'assets/DRESSING STRIPS.png',
    },
    {
      'name' : 'Desiccator',
      'image' : 'assets/DESICCATOR.png',
    },
    {
      'name' : 'Diagnostics',
      'image' :  'assets/DIAGNOSTICS.png',
    },
    {
      'name' : 'Ecg accessories',
      'image' : 'assets/ECG ACCESSORIES.png',
    },
    {
      'name' : 'Dressings',
      'image' : 'assets/DRESSINGS.png',
    },
    {
      'name' : 'Dressing strips',
      'image' : 'assets/DRESSING STRIPS.png',
    },
  ];
  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        foregroundColor: MyColor.primary_bule,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Medical Supply",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: MyColor.primary_bule,
            fontSize: 20),),
      ),
      body: GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: GridTile(
              footer: Text(MedicalSupply[index]['name']),
              child: Image.asset(MedicalSupply[index]['image']), //just for testing, will fill with image later
            ),
          );
        },
      ),


    );
  }
}

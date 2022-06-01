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
          style: TextStyle(fontWeight: FontWeight.bold, color: MyColor.primary_bule, fontSize: 20),),
      ),
      body: GridView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 3/4,
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [

                    Image.asset(MedicalSupply[index]['image']),
                    Text(MedicalSupply[index]['name']),
                    Column(
                      // alignment: Alignment.topCenter,
                      // fit: StackFit.passthrough,
                      // clipBehavior: Clip.antiAliasWithSaveLayer,
                      // // overflow: Overflow.visible,
                      children: [
                     Text('Aaron A940', style:  TextStyle(fontSize: 10.0, fontFamily: 'Roboto', color: Colors.black,),),
                        SizedBox(height: 3,),
                        Text('\u0024215.00– \u0024369.00', style: new TextStyle(fontSize: 10.0, fontFamily: 'Roboto', color: Colors.black,),
                        ),
                      ],
                    ),
                  ],

                ),
              ),
            ),
          );
        },
      ),


    );
  }
}

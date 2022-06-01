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
      'name': 'Aqium hand gel',
      'image': 'assets/AQIUM HAND GEL.png',
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
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
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

                    Image.asset(DentalSupply[index]['image']),
                    Text( DentalSupply[index]['name']),
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


                   //just for testing, will fill with image later

                ),
              ),
            ),
          );



        },
      ),
    );

  }

}




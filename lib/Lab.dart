import 'package:demo_flutter/utils/MyColor.dart';
import 'package:flutter/material.dart';

class Lab extends StatefulWidget {
  const Lab({Key? key}) : super(key: key);

  @override
  State<Lab> createState() => _LabState();
}

class _LabState extends State<Lab> {
  var h;

  var w;
  final int _selectedIndex = 0;
  List images1 = [
    {
      'name': 'Desiccator',
      'image': 'assets/DESICCATOR.png',
    },
    {
      'name': 'Diagnostics',
      'image': 'assets/DIAGNOSTICS.png',
    },
    {
      'name': 'Hematology',
      'image': 'assets/hematology.jpg',
    },
    {
      'name': 'Micro tube range',
      'image': 'assets/micro_tube_range.jpg',
    },
    {
      'name': 'Sample collection',
      'image': 'assets/simple_collection.jpg',
    },
    {
      'name': 'Desiccator',
      'image': 'assets/DESICCATOR.png',
    },
    {
      'name': 'Diagnostics',
      'image': 'assets/DIAGNOSTICS.png',
    },
    {
      'name': 'Hematology',
      'image': 'assets/hematology.jpg',
    },
    {
      'name': 'Micro tube range',
      'image': 'assets/micro_tube_range.jpg',
    },
    {
      'name': 'Sample collection',
      'image': 'assets/simple_collection.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        foregroundColor: MyColor.primary_bule,
        centerTitle: true,
        title: const Text(
          'Lab Supply',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: MyColor.primary_bule,
              fontSize: 20),
        ),
      ),
      body: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3/4,
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [

                    Image.asset(images1[index]['image']),
                    Text(images1[index]['name']),
                    Column(
                      // alignment: Alignment.topCenter,
                      // fit: StackFit.passthrough,
                      // clipBehavior: Clip.antiAliasWithSaveLayer,
                      // // overflow: Overflow.visible,
                      children: const [
                        Center(
                          child: Text(
                            'Vacumed Tube with Sodium Citrate 3,2 % for ESR',
                            style:  TextStyle(
                              fontSize: 10.0,
                              fontFamily: 'Roboto',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        // SizedBox(height: 3,),
                        // Text('Vacumed Tube with Sodium Citrate 3,2 % for ESR', style: new TextStyle(fontSize: 10.0, fontFamily: 'Roboto', color: Colors.black,),
                        // ),
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

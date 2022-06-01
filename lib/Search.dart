import 'package:demo_flutter/utils/MyColor.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.white,
        hintColor: Colors.black,
      ),
    ));

class MySearch extends StatelessWidget {
  var h;

  var w;

  MySearch({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,

       elevation: 0.4,
          leading:IconButton(
            icon: Image.asset('assets/back.png',
                height: 25,  fit: BoxFit.cover),
            onPressed: () {
              Navigator.pop(context);
            },
          ) ,
title: Container(
  width: double.infinity,

  height: 40,

  decoration: BoxDecoration(
    border: Border.all(
      color: Colors.grey[500]!,
    ),
      borderRadius:BorderRadius.circular(20)

  ),
  child:  Center(
      child: TextField(



    decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Search',
      prefixIcon:  const Icon(Icons.search,color: Colors.black,),

      suffixIcon: IconButton(
    icon:  const Icon(Icons.clear,color: Colors.black,),
        onPressed: () {
      Navigator.pop(context);
      },


    )


      )
  )
  ),

),
      ),



      body: SizedBox(
        height: h,
        width: w,
    child: Column(
    // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,

        children:[
        ElevatedButton(
        onPressed: () {
      Navigator.pop(context);
      },
        child: const Text('search!'),

      ),
        ],
      ),
    ));
  }
}

import 'dart:ui';

import 'package:demo_flutter/Bottom_sheet.dart';
import 'package:demo_flutter/Search.dart';
import 'package:demo_flutter/utils/MyColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demo_flutter/Cart.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';

import 'Help.dart';


void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: BottomNavigation(),
    ));

class MyHomepage extends StatefulWidget {
  final appTitle;

  MyHomepage({Key? key, this.appTitle}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  var h;

  var w;
  final int _selectedIndex = 0;
  List images = [
    // 'assets/slide4.jpg',
    // 'assets/slide5.jpg',
    'assets/slide8.jpg',
    'assets/slide9.jpg',
    'assets/slide.jpg',
    'assets/slide2.jpg',
    'assets/slide3.jpg',
  ];
  List images1 =[
    {
      'name' : 'Desiccator',
      'image' : 'assets/DESICCATOR.png',
    },
    {
      'name' : 'Diagnostics',
      'image' :  'assets/DIAGNOSTICS.png',
    },
    {
      'name' : 'Hematology',
      'image' : 'assets/hematology.jpg',
    },
    {
      'name' : 'Micro tube range',
      'image' : 'assets/micro_tube_range.jpg',
    },
    {
      'name' : 'Sample collection',
      'image' : 'assets/simple_collection.jpg',
    },
  ];
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
  ];
  List DentalSupply =[
    {
      'name' : 'Zhermack',
      'image' : 'assets/ZHERMACK.png',
    },
    {
      'name' : 'Aidal plus',
      'image' :  'assets/AIDAL PLUS.png',
    },
    {
      'name' : 'Aqium hand gel',
      'image' : 'assets/AQIUM HAND GEL.png',
    },
    {
      'name' : 'Bactol alcohol gel',
      'image' : 'assets/BACTOL ALCOHOL GEL.png',
    },
    {
      'name' : 'Bd hypodermic needless ',
      'image' : 'assets/BD HYPODERMIC NEEDLESS.jpg',
    },

  ];


TextStyle font=const TextStyle(
    color: MyColor.primary_bule,
  fontSize: 13,
    fontWeight:FontWeight.w300
);


  void _onItemTapped(int index) {
    //   setState(() {
    //     _selectedIndex = index;
    //   });
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: MyColor.PrimaryDarkColor,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(color: Colors.black),
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.4,
        centerTitle: true,
        title: Image.asset('assets/logo.png', height: 50, fit: BoxFit.cover),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: (MyColor.primary_bule)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MySearch()),
              );
            },
          ),
          IconButton(
            icon: Image.asset('assets/cart.png',
                height: 20, color: (MyColor.primary_bule), fit: BoxFit.cover),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cart()),
              );
             /* Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomNavigation()),
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Help()),

              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Sos()),

              );*/
            },
          )
        ],
      ),



      body: SizedBox(
          height: h,
          width: w,
          child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 15.0),
                CarouselSlider(
                  items: images.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              image: DecorationImage(
                                image: AssetImage(i),
                                fit: BoxFit.cover,
                              )),
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 150,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
                Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          padding: const EdgeInsets.all(8.0),
                          child:  Text('Lab Supply',style: font),

                        ))
                  ],
                ),
                SizedBox(
                  height: h*0.13,

                  child: ListView.builder(
                    reverse: true,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: images1.length,
                    itemBuilder: (context, position) {

                      return Container(
                        width: w*0.30,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(1.0),
                        decoration:  BoxDecoration(
                          color: MyColor.white,

                          // border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              Image.asset(images1[position]['image'], scale: 6,),
                              const SizedBox(
                                height: 5,
                              ),

                               Text(images1[position]['name'], style: font)
                            ],
                          ),
                          // child: Image.asset(images[position]),
                        ),
                      );
                    },
                  ),
                ),
                Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          padding: const EdgeInsets.all(8.0),
                          child:Text('Medical Supply',style: font),
                        ))
                  ],
                ),
                SizedBox(
                  height:h*0.13,
                  child: ListView.builder(
                    reverse: true,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: MedicalSupply.length,
                    itemBuilder: (context, position) {
                      return Container(
                        width: w*0.30,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(1.0),
                        decoration:  BoxDecoration(
                          color: MyColor.white,

                          // border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(MedicalSupply[position]['image'], scale: 8,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(MedicalSupply[position]['name'],textAlign:TextAlign.center,style: font)

                            ],
                          ),
                          // child: Image.asset(images[position]),
                        ),
                      );
                    },
                  ),
                ),
                Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Dental Supply',style: font),

                        ))
                  ],
                ),
                SizedBox(
                  height: h*0.13,
                  child: ListView.builder(
                    reverse: true,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: DentalSupply.length,
                    itemBuilder: (context, position) {
                      return Container(
                        width: w*0.30,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(1.0),
                        decoration: BoxDecoration(
                          color: MyColor.white,

                          // border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(DentalSupply[position]['image'], scale: 8,),
                               const SizedBox(

                                height: 5,
                              ),
                              Text(DentalSupply[position]['name'],textAlign: TextAlign.center,style:
                          font),

                            ],
                          ),
                          // child: Image.asset(images[position]),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    padding: const EdgeInsets.all(8.0),
                  child:

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  [

                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,

                      child: Image.asset('assets/like.png',height: 20,width: 20,),
                  ),

                      // IconButton(icon: ImageIcon(AssetImage('assets/like.png'), size: 20,) , onPressed: null),
                     const SizedBox(
                       width: 10,
                     ),
                     // Defaults to a flex of one.
                       Center(child: Text('Rate Your Experience',textAlign: TextAlign.center,style:font)),
                      const Spacer(flex: 1),
                      Text('VIEW MORE',style: font),
                    ],
                  )


                  ),






                // ListTile(
                //   leading:
                //     Image.asset('assets/like.png',),
                //   title: const Text('Rate Your Experience'),
                //   trailing: const Text('VIEW MORE'),
                //   textColor: MyColor.primary_bule,
                //   onTap: () {
                //     Navigator.pop(context);
                //   },
                // ),
              ],
            ),
          )),


      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: const EdgeInsets.only(top: 60.0),
                decoration: const BoxDecoration(
                  color: MyColor.white,
                ),
                child: Column(
                  children: [
                    Image.asset('assets/logo.png',
                        height: 40, fit: BoxFit.cover),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'https://www.wishmed.com.au/',
                      style: TextStyle(
                        color: MyColor.primary_bule,
                        fontSize: 15.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('Browse Category'),
              trailing: Image.asset(
                'assets/arrow.png',
                scale: 35,
              ),
              textColor: MyColor.primary_bule,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('Lab Supply'),
              trailing: Image.asset(
                'assets/arrow.png',
                scale: 35,
              ),
              textColor: MyColor.primary_bule,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('Lab Equipment'),
              trailing: Image.asset(
                'assets/arrow.png',
                scale: 35,
              ),
              textColor: MyColor.primary_bule,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('Medical Supply'),
              trailing: Image.asset(
                'assets/arrow.png',
                scale: 35,
              ),
              textColor: MyColor.primary_bule,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('Medical Equipment'),
              trailing: Image.asset(
                'assets/arrow.png',
                scale: 35,
              ),
              textColor: MyColor.primary_bule,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('Dental Supply '),
              trailing: Image.asset(
                'assets/arrow.png',
                scale: 35,
              ),
              textColor: MyColor.primary_bule,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('First Aid Supplies'),
              trailing: Image.asset(
                'assets/arrow.png',
                scale: 35,
              ),
              textColor: MyColor.primary_bule,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

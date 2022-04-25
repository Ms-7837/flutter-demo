import 'dart:ui';

import 'package:demo_flutter/Search.dart';
import 'package:demo_flutter/utils/MyColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demo_flutter/Cart.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomepage(appTitle: 'appTitle'),
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

  List images = [
    // 'assets/slide4.jpg',
    // 'assets/slide5.jpg',
    // 'assets/slide6.jpg',
    // 'assets/slide7.jpg',
    'assets/slide8.jpg',
    'assets/slide9.jpg',
    'assets/slide.jpg',
    'assets/slide2.jpg',
    'assets/slide3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;

    return Scaffold(
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
                MaterialPageRoute(builder: (context) =>   MySearch()),
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
                ListView.builder(
                  itemCount: images.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Image(
                          image: AssetImage(images[index]), fit: BoxFit.cover, height: 150),
                    );
                  },
                )
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

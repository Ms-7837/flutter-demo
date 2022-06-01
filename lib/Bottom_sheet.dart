import 'package:demo_flutter/Cart.dart';
import 'package:demo_flutter/Bottom_cart.dart';
import 'package:demo_flutter/Help.dart';
import 'package:demo_flutter/Contact.dart';
import 'package:demo_flutter/main.dart';
import 'package:demo_flutter/utils/MyColor.dart';
import 'package:demo_flutter/utils/User.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var h;

  var w;
  int _selectedIndex = 0;
  static TextStyle optionStyle =
      const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List _widgetOptions = [
    MyHomepage(),
    User(),
    Contact(),
    Help(),
    Bottom_cart(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      // title: const Text('BottomNavigationBar Sample'),

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/home.png',
              height: 30,
              color: MyColor.primary_bule,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/users.png',
              height:  30,
              color: MyColor.primary_bule,
            ),
            label: 'User',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/contact.png',
              height:  30,
              color: MyColor.primary_bule,
            ),
            label: 'Contact us',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/baseline_help_black_24dp.png',height: 30, color: MyColor.primary_bule,),
            label: 'Help',

          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/cart.png',
              scale: 20,
              color: MyColor.primary_bule,
            ),
            label: 'Cart',
          ),
        ],
        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

import 'package:demo_flutter/Accesso.dart';
import 'package:demo_flutter/Help.dart';
import 'package:demo_flutter/Sos.dart';
import 'package:demo_flutter/main.dart';
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
  static  TextStyle optionStyle =
  const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  final List _widgetOptions = [
    MyHomepage(),
     Help(),
    Sos(),
    Accesso(),
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

      body:  Center(


        child: _widgetOptions.elementAt(_selectedIndex),
       ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
        icon: Image.asset('assets/home.png',scale: 20, color: Colors.black, ),
            label: 'Home',


          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/help.png',scale: 20, color: Colors.black,),

            label: 'Help',

          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/urgent.png',scale: 20,color: Colors.black,),
            label: 'SOS',

          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/acces.png',scale: 20,color: Colors.black,),

            label: 'Accessories',

          ),
        ],
        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
type: BottomNavigationBarType.fixed,
        unselectedLabelStyle:  const TextStyle(color: Colors.black),
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }

}

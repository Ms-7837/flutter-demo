import 'package:demo_flutter/utils/MyColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Browse extends StatefulWidget {
  const Browse({Key? key}) : super(key: key);

  @override
  State<Browse> createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  var h, w;
  TextStyle heading =  TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: Colors.black,
  );
  TextStyle textFont =  TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: Colors.black,
  );













  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        foregroundColor: MyColor.primary_bule,
        title: const Text(
          "Browse Category",
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Refrigerator And Freezer",
                    style: heading,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Blood Bank",
                    style:  textFont,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Vaccine Medical Pharma Refrigerator",
                    style:  textFont,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Freezers And Ultra Deep Freezers",
                    style:  textFont,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Rapid Test Kit",
                    style: heading,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Our Suppliers",
                    style: heading,
                  ),
                ),
              ),

              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Technical Services",
                    style: heading,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Catalogues",
                    style: heading,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Dental Catalogue",
                    style:  textFont,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Medical Catalogue",
                    style:  textFont,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Lab Catalogue",
                    style:  textFont,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Smart Inventory System",
                    style: heading,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Pharmacy Supplies",//

                    style: heading,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " COVID Supplies",
                    style: heading,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " Specials",
                    style: heading,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " Medical Items",
                    style:  textFont,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " Laboratory Items",
                    style:  textFont,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " Our Brands",
                    style: heading,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

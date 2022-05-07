import 'dart:ui';

import 'package:demo_flutter/Bottom_sheet.dart';
import 'package:demo_flutter/Lab.dart';
import 'package:demo_flutter/Search.dart';
import 'package:demo_flutter/utils/MyColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demo_flutter/Cart.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';

import 'Bottom_cart.dart';
import 'Dental.dart';
import 'Help.dart';
import 'Medical.dart';
import 'menu/Browse.dart';

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
  ];
  List MedicalSupply = [
    {
      'name': 'Desiccator',
      'image': 'assets/DESICCATOR.png',
    },
    {
      'name': 'Diagnostics',
      'image': 'assets/DIAGNOSTICS.png',
    },
    {
      'name': 'Ecg accessories',
      'image': 'assets/ECG ACCESSORIES.png',
    },
    {
      'name': 'Dressings',
      'image': 'assets/DRESSINGS.png',
    },
    {
      'name': 'Dressing strips',
      'image': 'assets/DRESSING STRIPS.png',
    },
  ];
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
  ];
  List<String> categoriesList = [
    "Browse Category",
    "Lab Supply",
    "Lab Equipment",
    "Medical Supply",
    "Medical Equipment",
    "Dental Supply",
    "First Aid Supplies"
  ];

  TextStyle font = const TextStyle(
      color: MyColor.primary_bule, fontSize: 13, fontWeight: FontWeight.bold);
  TextStyle fontcolor = const TextStyle(
      color: MyColor.primary_bule, fontSize: 13, fontWeight: FontWeight.w300);

  TextStyle heading = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: Colors.black,
  );

  TextStyle textFont = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: Colors.black,
  );

  bool _customTileExpanded = true;

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
                MaterialPageRoute(builder: (context) => Bottom_cart()),
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
                          child: Text('Lab Supply', style: font),
                        ))
                  ],
                ),
                SizedBox(
                  height: h * 0.13,
                  child: ListView.builder(
                    reverse: true,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: images1.length,
                    itemBuilder: (context, position) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Lab()),
                          );
                        },
                        child: Container(
                          width: w * 0.30,
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
                                Image.asset(
                                  images1[position]['image'],
                                  scale: 6,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(images1[position]['name'], style:  fontcolor)
                              ],
                            ),
                            // child: Image.asset(images[position]),
                          ),
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
                          child: Text('Medical Supply', style: font),
                        ))
                  ],
                ),
                SizedBox(
                  height: h * 0.13,
                  child: ListView.builder(
                    reverse: true,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: MedicalSupply.length,
                    itemBuilder: (context, position) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Medical()),
                          );
                        },
                        child: Container(
                          width: w * 0.30,
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
                                Image.asset(
                                  MedicalSupply[position]['image'],
                                  scale: 8,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(MedicalSupply[position]['name'],
                                    textAlign: TextAlign.center, style:  fontcolor)
                              ],
                            ),
                            // child: Image.asset(images[position]),
                          ),
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
                          child: Text('Dental Supply', style: font),
                        ))
                  ],
                ),
                SizedBox(
                  height: h * 0.13,
                  child: ListView.builder(
                    reverse: true,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: DentalSupply.length,
                    itemBuilder: (context, position) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Dental()),
                          );
                        },
                        child: Container(
                          width: w * 0.30,
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
                                Image.asset(
                                  DentalSupply[position]['image'],
                                  scale: 8,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(DentalSupply[position]['name'],
                                    textAlign: TextAlign.center, style:  fontcolor),
                              ],
                            ),
                            // child: Image.asset(images[position]),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            'assets/like.png',
                            height: 20,
                            width: 20,
                          ),
                        ),


                        const SizedBox(
                          width: 10,
                        ),

                        Center(
                            child: Text('Rate Your Experience',
                                textAlign: TextAlign.center, style:  fontcolor)),
                        const Spacer(flex: 1),
                        Text('VIEW MORE', style: font),
                      ],
                    )),

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
                padding: const EdgeInsets.only(top: 20.0),
                decoration: const BoxDecoration(
                  color: MyColor.white,
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset('assets/cross.png', height: 25,  fit: BoxFit.cover),

                        ),
                      ),
                    ) ,

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
            ExpansionTile(
              leading: const Icon(Icons.language),
              iconColor: Colors.grey,
              title: const Text(
                "Browse Category",
              ),
              trailing: Icon(
                _customTileExpanded
                    ? Icons.arrow_drop_down
                    : Icons.arrow_drop_up,
              ),
              textColor: MyColor.primary_bule,
              onExpansionChanged: (bool expanded) {
                setState(() => _customTileExpanded = expanded);
              },
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 25.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        header("Refrigerator And Freezer"),
                        block("Blood Bank"),
                        block("Vaccine Medical Pharma Refrigerator"),
                        block("Freezers And Ultra Deep Freezers"),
                        const SizedBox(height: 15),
                        header("Rapid Test Kit"),
                        const SizedBox(height: 15),
                        header("Our Suppliers"),
                        const SizedBox(height: 15),
                        header("Technical Services"),
                        const SizedBox(height: 15),
                        header("Catalogues"),
                        block("Dental Catalogue"),
                        block("Medical Catalogue"),
                        block("Lab Catalogue"),
                        const SizedBox(height: 15),
                        header("Smart Inventory System"),
                        const SizedBox(height: 15),
                        header("Pharmacy Supplies"),
                        const SizedBox(height: 15),
                        header("COVID Supplies"),
                        const SizedBox(height: 15),
                        header("Specials"),
                        block("Medical Items"),
                        block("Laboratory Items"),
                        const SizedBox(height: 15),
                        header("Our Brands"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              leading: const Icon(Icons.language),
              title: const Text(
                "Lab Supply",
              ),
              trailing: Icon(
                _customTileExpanded
                    ? Icons.arrow_drop_down
                    : Icons.arrow_drop_up,
              ),
              textColor: MyColor.primary_bule,
              onExpansionChanged: (bool expanded) {
                setState(() => _customTileExpanded = expanded);
              },
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 25.0),
                  child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 15),
                          header("Lab General Supply"),
                          block("Pathology Supplies"),
                          const SizedBox(height: 15),
                          header("Racks And Boxes"),
                          const SizedBox(height: 15),
                          header("Micro Tube Range"),
                          SizedBox(height: 15),
                          header("Hematology"),
                          SizedBox(height: 15),
                          header("Bio-Chemistry"),
                          SizedBox(height: 15),
                          header("Test Tubes"),
                          block("Centrifuge Tube"),
                          SizedBox(height: 15),
                          header("Microbiology"),
                          block("Microbiology Media"),
                          SizedBox(height: 15),
                          header("Special Customized Products"),
                          SizedBox(height: 15),
                          header("Glassware"),
                          block("Dessicators"),
                          block("Beaker"),
                          block("Blood Diluting Pipettes"),
                          block("Bottle"),
                          block("Burette"),
                          block(" Capillary Tube"),
                          block("Chromatography Column"),
                          block("Counting Chamber"),
                          block("Cover Slips"),
                          block("Crucible And Accessories"),
                          block("Flask"),
                          block("Volumetric Flask"),
                          block("Flat Bottom"),
                          block("Erlenmeyer"),
                          block(" Round Bottom"),
                          block("Bottle"),
                          block("Counting Chamber"),
                          SizedBox(height: 15),
                          header("Sample Collection"),
                          block("Blood Collection Tube"),
                          block("Sample Containers"),
                          block("Sampling Swabs"),
                          SizedBox(height: 15),
                          header("Liquid Handling"),
                        ]),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(Icons.language),
              title: Text(
                "Lab Equipment",
              ),
              trailing: Icon(
                _customTileExpanded
                    ? Icons.arrow_drop_down
                    : Icons.arrow_drop_up,
              ),
              textColor: MyColor.primary_bule,
              onExpansionChanged: (bool expanded) {
                setState(() => _customTileExpanded = expanded);
              },
              children: <Widget>[
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        header("Ancillary Equipment"),
                        block("Autoclaves"),
                        block("Floor Standing Autoclaves"),
                        block("High Pressure Autoclaves"),
                        block("Large Autoclaves For Production"),
                        block("Pure Steam Generator"),
                        block("Vertical Autoclaves"),
                        block("Table Top Autoclaves"),
                        block("Ancillary Equipment"),
                        block("Wash Water Sterilization"),
                        block("Centrifuges"),
                        block("Micro Centrifuges"),
                        block("Multi-Purpose Centrifuges"),
                        block("Bath And Circulators"),
                        block("Fumehood"),
                        block("Hotplate & Stirrers"),
                        block("Blood Bank Equipment"),
                        block("Incubator"),
                        block("Fan Forced Incubator"),
                        block("Natural Convection Incubator"),
                        block("Floor Standing Autoclaves"),
                        block("Mixers"),
                        block("Mixers"),
                        block("Ovens"),
                        SizedBox(
                          height: 15,
                        ),
                        header("Fridges And Freezers"),
                        // Text("Fridges And Freezers", style: heading,),
                        SizedBox(
                          height: 15,
                        ),
                        header("Immunology"),
                        SizedBox(
                          height: 15,
                        ),
                        header("Clinical Chemistry"),
                        block("POCT"),
                        SizedBox(
                          height: 15,
                        ),
                        header("Hematology"),

                        SizedBox(
                          height: 15,
                        ),
                        header("Liquid Handling"),

                        block("Tips & Pipettes"),
                        SizedBox(
                          height: 15,
                        ),
                        header("Coagulation"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              leading: const Icon(Icons.language),
              title: const Text(
                "Medical Supply",
              ),
              trailing: Icon(
                _customTileExpanded
                    ? Icons.arrow_drop_down
                    : Icons.arrow_drop_up,
              ),
              onExpansionChanged: (bool expanded) {
                setState(() => _customTileExpanded = expanded);
              },
              children: <Widget>[
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 15),
                        header("Blades Scalpels/Biopsy Punch"),
                        block("Biopsy Punch"),
                        block("Blades"),
                        block("Scalpel"),
                        const SizedBox(height: 15),
                        header("Blades Scalpels/Biopsy Punch"),
                        block("Adhesive"),
                        block("Film Dressings"),
                        block("Foam Dressing"),
                        block("Island Dressings"),
                        block("Non Adherent Dressings"),
                        block("Waterproof Dressing"),
                        const SizedBox(height: 15),
                        header("Dressing Strips"),
                        const SizedBox(height: 15),
                        header("Medical Scales & Measuring System"),
                        const SizedBox(height: 15),
                        header("Irrigation"),
                        block("Ear Irrigation"),
                        block("Wound Irrigation"),
                        const SizedBox(height: 15),
                        header(" Infection Control"),
                        block("Gloves"),
                        block("Examination Gloves"),
                        block("Latex Gloves"),
                        block("Nitrile Gloves"),
                        block("Surgeon Gloves"),
                        block("Sterile Gloves"),
                        block("Sterile Gloves"),
                        block("Sterilisation Products"),
                        SizedBox(height: 15),
                        header(" ECG Accessories"),
                        SizedBox(height: 15),
                        header(" Blood Solutions"),
                        SizedBox(height: 15),
                        header("  Syringe & Needles"),
                        block("Lancets"),
                        block("Miscellaneous"),
                        block("Needles"),
                        block("Sharp Containers"),
                        block("Syringe"),
                        block("Syringe With Needles"),
                        SizedBox(height: 15),
                        header("Stethoscopes"),
                        SizedBox(height: 15),
                        header("Thermometers"),
                        SizedBox(height: 15),
                        header(" Critical Care"),
                        block("Accessories And SecurementAirways"),
                        block("Airways"),
                        block("Faecal Management"),
                        block("Feeding Tube"),
                        block("Urology"),
                        SizedBox(height: 15),
                        header("Diagnostics"),
                        block("Diagnostic Meters"),
                        block("Diagnostics Supplies"),
                        block("Urine Analysis"),
                        block("Drug & Alcohol Testing"),
                        block("Speculum Tips"),
                        block("Women’s Health"),
                        SizedBox(height: 15),
                        header("Gauze Swab & Crepe Bandage"),
                        block("Crepe Bandage"),
                        block("Dressing Pack"),
                        block("Gauze Swab"),
                        SizedBox(height: 15),
                        header("Sphygmomanometer"),
                        SizedBox(height: 15),
                        header(" Medical Furniture"),
                        SizedBox(height: 15),
                        header("Cryosurgery"),
                        SizedBox(height: 15),
                        header("Instruments"),
                        block("Curette"),
                        block("Disposable Instruments"),
                        block("Eye Probe & Needle"),
                        block("Files"),
                        block("Forceps"),
                        block("Artery Forceps/Haemostats"),
                        block("Aural Forceps"),
                        block("First Aid And Splinter Forceps"),
                        block("Opthalmic Forceps"),
                        block("Sponge And Holding Forceps"),
                        block("Tischler Biopsy Forcep"),
                        block("Uterine/Gynaecological Forceps"),
                        block("Needle Holder"),
                        block("Pliers & Cutters"),
                        block("Spreaders"),
                        block("Retractors"),
                        block("Scissors & Cutters"),
                        block("Sterile Instrument Packs"),
                        block("Towel Clips"),
                        SizedBox(height: 15),
                        header("Wound Closure/Suture"),
                        block("Adhesive"),
                        block("Suture"),
                        block("Suture Remover"),
                        SizedBox(height: 15),
                        header("Desiccator"),
                        SizedBox(height: 15),
                        header("Paper Towel, Rolls & Bedding"),
                        SizedBox(height: 15),
                        header("Surgical Tapes"),
                        SizedBox(height: 15),
                        header("Hygiene"),
                        SizedBox(height: 15),
                        header("Specimen Bags & Waste Bags"),
                        SizedBox(height: 15),
                        header("General Supplies"),
                        SizedBox(height: 15),
                        header("Sharp Collectors"),
                        SizedBox(height: 15),
                        header("Medical Printer Papers"),
                        SizedBox(height: 15),
                        header("Resuscitation"),
                        block("Nebulisers")
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              leading: const Icon(Icons.language),
              title: const Text(
                "Medical Equipment",
              ),
              trailing: Icon(
                _customTileExpanded
                    ? Icons.arrow_drop_down
                    : Icons.arrow_drop_up,
              ),
              onExpansionChanged: (bool expanded) {
                setState(() => _customTileExpanded = expanded);
              },
              children: <Widget>[
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        header("Cardiology"),
                        SizedBox(height: 15),
                        header("Spirometer"),
                        SizedBox(height: 15),
                        header("Ceevac Portable Suction Pump"),
                        SizedBox(height: 15),
                        header("Medical Furniture"),
                        block("Chair And Stools"),
                        block("Examination Lights"),
                        block("Examination Table"),
                        block("Trolley"),
                        block("Walking Aid"),
                        block("Wheelchairs"),
                        SizedBox(height: 15),
                        header("POCT"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              leading: const Icon(Icons.language),
              title: const Text(
                "Dental Supply",
              ),
              trailing: Icon(
                _customTileExpanded
                    ? Icons.arrow_drop_down
                    : Icons.arrow_drop_up,
              ),
              onExpansionChanged: (bool expanded) {
                setState(() => _customTileExpanded = expanded);
              },
              children: [
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        header("Zhermack"),
                        block("Alginate"),
                        block("Alginate Remover"),
                        block("Bite Registration"),
                        block("Dental Stones Type 3"),
                        block("Dental Stones Type 4"),
                        block("Gingivial Products"),
                        block("Impression Material"),
                        block("Lab Putty"),
                        block("Putty"),
                        SizedBox(
                          height: 15,
                        ),
                        header("Paper Towel, Rolls & Bedding"),
                        SizedBox(
                          height: 15,
                        ),
                        header("Hygiene"),
                        SizedBox(
                          height: 15,
                        ),
                        header("Blades Scalpels/Biopsy Punch"),
                        block("Biopsy Punch"),
                        block("Blades"),
                        block("Scalpel"),
                        SizedBox(
                          height: 15,
                        ),
                        header(" Gauze Swab & Crepe Bandage"),
                        block("Crepe Bandage"),
                        block("Dressing Pack"),
                        block("Gauze Swab"),
                        SizedBox(
                          height: 15,
                        ),
                        header(" Irrigation"),
                        block("Ear Irrigation"),
                        block("Wound Irrigation"),
                        SizedBox(
                          height: 15,
                        ),
                        header("Infection Control"),
                        block("Gloves"),
                        block("Examination Gloves"),
                        block("Latex Gloves"),
                        block("Nitrile Gloves"),
                        block("Sterile Gloves"),
                        block("Sterile Gloves"),
                        SizedBox(
                          height: 15,
                        ),
                        header("Wound Closure/Suture"),
                        block("Adhesive"),
                        block("Suture"),
                        block("Suture Remover"),
                        SizedBox(
                          height: 15,
                        ),
                        header("Syringe & Needles"),
                        block("Lancets"),
                        block("Miscellaneous"),
                        block("Needles"),
                        block("Sharp Containers"),
                        block("Syringe"),
                        block("Syringe With Needles"),
                        SizedBox(
                          height: 15,
                        ),
                        header("Sharp Collectors"),
                        SizedBox(
                          height: 15,
                        ),
                        header("Specimen Bags & Waste Bags"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
      ExpansionTile(

        title: Center(
          child: Text(
            "First Aid Supplies",
          ),
        ),
        trailing: Icon(
          _customTileExpanded
              ? Icons.arrow_drop_down
              : Icons.arrow_drop_up,color: MyColor.white,
        ),
        textColor: MyColor.primary_bule,
        onExpansionChanged: (bool expanded) {
          setState(() => _customTileExpanded = expanded);
        },
      ),
          ],
        ),
      ),
    );
  }

  block(text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 3),
      child: Text(
        text,
        style: textFont,
      ),
    );
  }

  header(text) {
    return Padding(
      padding: EdgeInsets.only(left: 0.0),
      child: Text(
        text,
        style: heading,
      ),
    );
  }
}

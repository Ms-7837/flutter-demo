import 'package:demo_flutter/Bottom_cart.dart';
import 'package:demo_flutter/utils/MyColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  var h, w;
  final maxLines = 5;

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Help',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: MyColor.primary_bule,
              fontSize: 25),
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 10),
                width: w,
                child: const Text(
                  'SEND US AN EMAIL',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Divider(
                height: 25,
                thickness: 1,
                indent: 10,
                endIndent: 20,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Your Name (required)",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: const TextField(
                  maxLength: 10,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    // hintText: 'Enter name',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Your Email (required)",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: const TextField(
                  maxLength: 10,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),

                    // hintText: 'Enter e-mail id',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Your Message (required))",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 5,
              // ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 30),
                // height: maxLines * 24.0,
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  minLines: 2,
                  maxLines: 5,

                  decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),

                      // hintText: 'Enter name',
                      ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                child: const Text('Sumbit'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: MyColor.primary_bule,
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    textStyle:
                        const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),

        // child: ElevatedButton(
        //   onPressed: () {
        //     // Navigator.pop(context);
        //     SystemNavigator.pop();
        //   },
        //   child: const Text('Go back!'),
        //
        // ),
      ),
    );
  }
}

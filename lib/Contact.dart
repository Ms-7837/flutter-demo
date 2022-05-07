import 'package:demo_flutter/utils/MyColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demo_flutter/Contact.dart';

class Contact extends StatefulWidget {
  Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  var h, w;

  TextStyle heading = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22,
    color: Colors.black,
  );

  TextStyle textFont = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w300,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Contact us',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 15),
                  header('Office Address:',
                      ' Unit 2, 22-24 Steel Street, Blacktown, NSW 2148'),
                  const SizedBox(height: 15),
                  header('Brisbane office:',
                      ' Unit 11, 42 Smith Street, Capalaba 4157'),
                  const SizedBox(height: 20),
                  block('Email:', ' sales@wishmed.com.au'),
                  block('Phone no 1:', '  +61 2 8678 0983'),
                  block('Phone no 2:', '   +61 2 8678 0993 '),
                  block('Fax:', '   +61 2 9672 8656'),
                  const SizedBox(height: 18),
                  Row(children: const <Widget>[
                    Expanded(child: Divider()),
                    Text(
                      "STATE WIDE SALES CONTACT",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    Expanded(child: Divider()),
                  ]),
                  const SizedBox(height: 25),
                  SizedBox(
                    width: w,
                    child: const Text(
                      'NSW and ACT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          " Lavanya",
                          style: textFont,
                        ),
                        Text(
                          "  +61 421272 230",
                          style: textFont,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    width: w,
                    child: const Text(
                      'Queensland and Northern Territory',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          " Rajesh ",
                          style: textFont,
                        ),
                        Text(
                          "  +61 420 839 742",
                          style: textFont,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    width: w,
                    child: const Text(
                      'Victoria and South Australia',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          " Varun   ",
                          style: TextStyle(),
                        ),
                        Text(
                          "   +61 412 458 217",
                          style: textFont,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 70),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    width: w,
                    child: const Text(
                      'CONTACT DETAILS',
                      style: TextStyle(
                        fontSize: 18,
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
                  const SizedBox(height: 10),
                  block('General Sales Enquiry:', '  sales@wishmed.com.au'),
                  const SizedBox(height: 10),
                  block('Logistic Enquiries:', '  support@wishmed.com.au'),
                  const SizedBox(height: 10),
                  block('Accounts Enquiries:', '   accounts@wishmed.com.au'),
                  const SizedBox(height: 10),
                  block('Purchase Enquiries: :', '  purchase@wishmed.com.au'),
                  const SizedBox(height: 25),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    width: w,
                    child: const Text(
                      'Laboratory Enquiries',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          " Rajesh",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "+61 420 839 919",
                          style: textFont,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    width: w,
                    child: const Text(
                      'Dental Enquiries',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          " Danny",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "+61 426 475 114",
                          style: textFont,
                        ),
                      ],
                    ),


                  ),
                  const SizedBox(height: 25),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    width: w,
                    child: const Text(
                      'Medical Enquiries',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          " Ritu",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "+61 420 839 178",
                          style: textFont,
                        ),
                      ],
                    ),
                  ),
                ]),
          )

          // child: ElevatedButton(
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          //   child: const Text('Go back!'),
          //
          // ),

          ),
    );
  }

// component
  Widget block(String text1, String text2) {
    return Container(
        padding: const EdgeInsets.all(8.0),
        child: RichText(
            text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
                text: text1,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            TextSpan(
                text: text2,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w300)),
          ],
        )));
  }

  Widget header(String text1, String text2) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(text1, style: heading),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            text2,
            style: textFont,
          ),
        ),
      ],
    ));
  }
}

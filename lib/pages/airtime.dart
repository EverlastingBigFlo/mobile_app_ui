// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:my_opay/components/my_texts.dart';

class airtime extends StatefulWidget {
  const airtime({Key? key}) : super(key: key);

  @override
  State<airtime> createState() => _airtimeState();
}

class _airtimeState extends State<airtime> {
  String dropdownValue = 'MTN';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Airtime',
          style: TextStyle(
            fontSize: 18, // Adjust the font size as needed
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: MyTexts(
              color: Colors.green,
              text: 'History',
              fontSize: .9,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
      // backgroundColor: Colors.green,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Container(
              width: double.infinity,
              height: 90,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'lib/assets/download.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Ad card ends here

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black12))),
              child: Row(
                children: [
                  DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(Icons.arrow_drop_down_rounded),
                    style: const TextStyle(color: Colors.black26),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(
                        value: 'MTN',
                        child: Row(
                          children: [
                            ClipOval(
                              child: Image(
                                image: AssetImage('lib/assets/MTN-logo.png'),
                                fit: BoxFit.cover,
                                width: 30,
                                // height: 30,
                              ),
                            ), // Use AssetImage within Image widget
                            SizedBox(width: 5),
                            Text('MTN'),
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'Airtel',
                        child: Row(
                          children: [
                            ClipOval(
                              child: Image(
                                image: AssetImage('lib/assets/airtel-logo.png'),
                                fit: BoxFit.cover,
                                width: 30,
                                // height: 30,
                              ),
                            ), // Use AssetImage within Image widget
                            SizedBox(width: 5),
                            Text('Airtel'),
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'Glo',
                        child: Row(
                          children: [
                            ClipOval(
                              child: Image(
                                image: AssetImage('lib/assets/glo-logo.jpeg'),
                                fit: BoxFit.cover,
                                width: 30,
                                // height: 30,
                              ),
                            ), // Use AssetImage within Image widget
                            SizedBox(width: 5),
                            Text('Glo'),
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        value: '9Mobile',
                        child: Row(
                          children: [
                            ClipOval(
                              child: Image(
                                image:
                                    AssetImage('lib/assets/9mobile-logo.png'),
                                fit: BoxFit.cover,
                                width: 5,
                                // height: 30,
                              ),
                            ), // Use AssetImage within Image widget
                            // SizedBox(width: 5),
                            Text('9Mobile'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 240,
                    // height: 100,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.keyboard_arrow_down_sharp)),
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.contact_emergency,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

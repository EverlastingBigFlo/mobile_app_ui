// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class tv extends StatefulWidget {
  const tv({super.key});

  @override
  State<tv> createState() => _tvState();
}

class _tvState extends State<tv> {
  String dropdownValue = 'DSTV';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'TV',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: Container(
        child: Column(
          children: [
//first card here
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(12.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Service Provider',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          DropdownButton<String>(
                            value: dropdownValue,
                            icon: Icon(Icons.keyboard_arrow_right_rounded),
                            underline: Container(
                              // Remove underline border
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                              ),
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                value: 'DSTV',
                                child: Row(
                                  children: [
                                    ClipOval(
                                      child: Image(
                                        image: AssetImage('lib/assets/op.png'),
                                        fit: BoxFit.cover,
                                        width: 40,
                                        // height: 30,
                                      ),
                                    ), // Use AssetImage within Image widget
                                    SizedBox(width: 5),
                                    Text('DSTV'),
                                  ],
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'GOTV',
                                child: Row(
                                  children: [
                                    ClipOval(
                                      child: Image(
                                        image:
                                            AssetImage('lib/assets/gotv.webp'),
                                        fit: BoxFit.cover,
                                        width: 40,
                                        height: 40,
                                      ),
                                    ), // Use AssetImage within Image widget
                                    SizedBox(width: 5),
                                    Text('GOTV'),
                                  ],
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'Startimes',
                                child: Row(
                                  children: [
                                    ClipOval(
                                      child: Image(
                                        image: AssetImage(
                                            'lib/assets/startimes.png'),
                                        fit: BoxFit.cover,
                                        width: 40,
                                        height: 40,
                                      ),
                                    ), // Use AssetImage within Image widget
                                    SizedBox(width: 5),
                                    Text('Startimes'),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

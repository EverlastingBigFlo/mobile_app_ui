// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class tv extends StatefulWidget {
  const tv({super.key});

  @override
  State<tv> createState() => _tvState();
}

class _tvState extends State<tv> {
  String dropdownValue = 'DSTV';
  String hintText = 'Enter DSTV smartcard Number'; // Default hint text

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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(12.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Service Provider',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),

                      //dropdown options start here
                      Row(
                        children: [
                          Expanded(
                            child: DropdownButtonHideUnderline(
                              // Hide the underline
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;

                                    // Update the hint text based on the selected option
                                    if (dropdownValue == 'DSTV') {
                                      hintText = 'Enter DSTV smartcard Number';
                                    } else if (dropdownValue == 'GOTV') {
                                      hintText = 'Enter GOTV smartcard Number';
                                    } else if (dropdownValue == 'Startimes') {
                                      hintText =
                                          'Enter Startimes smartcard Number';
                                    }
                                  });
                                },
                                items: [
                                  DropdownMenuItem(
                                    value: 'DSTV',
                                    child: Row(
                                      children: [
                                        ClipOval(
                                          child: Image(
                                            image:
                                                AssetImage('lib/assets/op.png'),
                                            fit: BoxFit.cover,
                                            width: 40,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'DSTV',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 'GOTV',
                                    child: Row(
                                      children: [
                                        ClipOval(
                                          child: Image(
                                            image: AssetImage(
                                                'lib/assets/gotv.webp'),
                                            fit: BoxFit.cover,
                                            width: 40,
                                            height: 40,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'GOTV',
                                          style: TextStyle(fontSize: 18),
                                        ),
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
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Startimes',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            // ads code here
            ClipRRect(
              borderRadius: BorderRadius.circular(
                  10.0), // Adjust the border radius as needed
              child: Image(
                image: AssetImage('lib/assets/StartimeswithFemi.webp'),
                fit: BoxFit.cover, // Adjust the fit as needed
                height: 40, // Adjust the height as needed
                width: 370, // Adjust the height as needed
              ),
            ),

            // smart card section here
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Smartcard Number',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Beneficiaries',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 17),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right_rounded,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: hintText,
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

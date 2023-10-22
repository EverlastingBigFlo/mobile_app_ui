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
  String? selectedPackage;
  List<DropdownMenuItem<String>> buildPackageDropdownItems() {
    switch (dropdownValue) {
      case 'DSTV':
        return [
          DropdownMenuItem(
              value: 'DSTV Package 1', child: Text('DSTV Premium')),
          DropdownMenuItem(
              value: 'DSTV Package 2', child: Text('DSTV Compact Plus')),
        ];
      case 'GOTV':
        return [
          DropdownMenuItem(value: 'GOTV Package 1', child: Text('GOTV Supa')),
          DropdownMenuItem(value: 'GOTV Package 2', child: Text('GOTV Max')),
        ];
      case 'Startimes':
        return [
          DropdownMenuItem(
              value: 'Startimes Package 1', child: Text('DTT_Nova')),
          DropdownMenuItem(
              value: 'Startimes Package 2', child: Text('DTT_Basic')),
        ];
      default:
        return [];
    }
  }

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
                          color: Colors.grey,
                        ),
                      ),
                      //dropdown options start here
                      Row(
                        children: [
                          Expanded(
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                    // Reset the selectedPackage when changing the service provider
                                    selectedPackage = null; // Add this line
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
                      ),
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

                    // textfield start here

                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              Colors.grey[350], // Set the background color here
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: hintText,
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              letterSpacing: 2.0,
                            ),
                            contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    )
                    // textfield end here

                    ,
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                      child: Row(
                        children: [
                          Text(
                            'Payment Period',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),

                    // days card here

                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 0, 20),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 100,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Colors.greenAccent[100],
                            ),
                            child: Center(
                              child: Text(
                                '30 Days',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green[400]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // days card end here

                    // package widget start here
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 0, 10),
                      child: Row(
                        children: [
                          Text(
                            'Package',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),

                    // package option selection starts here
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                      child: Container(
                        width: 350,
                        height: 65,
                        decoration: BoxDecoration(
                          color:
                              Colors.grey[350], // Set the background color here
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: selectedPackage,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedPackage = newValue!;
                                });
                              },
                              items: [
                                DropdownMenuItem(
                                  value:
                                      null, // Set value to null to indicate that it's not a valid selection
                                  child: Text(
                                    'Please select your package', // Your hint text
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                ...buildPackageDropdownItems(), // Include your other items
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
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

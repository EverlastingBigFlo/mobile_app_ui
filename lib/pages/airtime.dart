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
            fontSize: 15, // Adjust the font size as needed
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
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
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
                                  image:
                                      AssetImage('lib/assets/airtel-logo.png'),
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
                                  width: 30,
                                ),
                              ),
                              // Use AssetImage within Image widget
                              SizedBox(width: 5),
                              Text('9Mobile'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 230,
                      height: 60,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.keyboard_arrow_down_sharp)),
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
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

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Top up',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Card(
                              child: Container(
                                height: 100,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'lib/assets/nigeria-naira-currency-symbol.png',
                                                width: 10,
                                              ),
                                              Text(
                                                '50.00',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'lib/assets/nigeria-naira-currency-symbol.png',
                                                width: 8,
                                                color: Colors.green,
                                              ),
                                              Text(
                                                '0.5 Cashback',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              child: Container(
                                height: 100,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'lib/assets/nigeria-naira-currency-symbol.png',
                                                width: 10,
                                              ),
                                              Text(
                                                '100.00',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'lib/assets/nigeria-naira-currency-symbol.png',
                                                width: 8,
                                                color: Colors.green,
                                              ),
                                              Text(
                                                '1 Cashback',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              child: Container(
                                height: 100,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'lib/assets/nigeria-naira-currency-symbol.png',
                                                width: 10,
                                              ),
                                              Text(
                                                '200.00',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'lib/assets/nigeria-naira-currency-symbol.png',
                                                width: 8,
                                                color: Colors.green,
                                              ),
                                              Text(
                                                '2 Cashback',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Card(
                              child: Container(
                                height: 100,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'lib/assets/nigeria-naira-currency-symbol.png',
                                                width: 10,
                                              ),
                                              Text(
                                                '500.00',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'lib/assets/nigeria-naira-currency-symbol.png',
                                                width: 8,
                                                color: Colors.green,
                                              ),
                                              Text(
                                                '5 Cashback',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              child: Container(
                                height: 100,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'lib/assets/nigeria-naira-currency-symbol.png',
                                                width: 10,
                                              ),
                                              Text(
                                                '1000.00',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'lib/assets/nigeria-naira-currency-symbol.png',
                                                width: 8,
                                                color: Colors.green,
                                              ),
                                              Text(
                                                '10 Cashback',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              child: Container(
                                height: 100,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'lib/assets/nigeria-naira-currency-symbol.png',
                                                width: 10,
                                              ),
                                              Text(
                                                '2000.00',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'lib/assets/nigeria-naira-currency-symbol.png',
                                                width: 8,
                                                color: Colors.green,
                                              ),
                                              Text(
                                                '20 Cashback',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'lib/assets/nigeria-naira-currency-symbol.png',
                            height: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                              child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: '50 - 500.000',
                              hintStyle: TextStyle(color: Colors.grey[400]),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 226, 218, 218)),
                              ),
                            ),
                          )),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.green[300])),
                              onPressed: () => {},
                              child: Text(
                                'Pay',
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(20), // Add border radius here
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Buy airtime fast & easy with *955#',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 36,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green[50],
                      ),
                      child: IconButton(
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                        icon: Icon(
                          Icons.phone,
                          color: Colors.green,
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

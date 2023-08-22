// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:my_opay/components/card_for_page_view.dart';

import 'components/my_texts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyOpay(),
    );
  }
}

class MyOpay extends StatefulWidget {
  const MyOpay({super.key});

  // List<Widget> makeRows() {
  //    return mylist.forEach((element) {
  //   return  Text('$element');
  //   })
  // }

  @override
  State<MyOpay> createState() => _MyOpayState();
}

class _MyOpayState extends State<MyOpay> {
  List mylist = [
    {'text': 'Airtime', 'icon': Icons.app_settings_alt_rounded},
    {'text': 'Data', 'icon': Icons.mobile_screen_share_sharp},
    {'text': 'Betting', 'icon': Icons.sports_soccer},
    {'text': 'TV', 'icon': Icons.live_tv},
  ];
  List mySecondList = [
    {'text': 'Electricity', 'icon': Icons.lightbulb_outline},
    {'text': 'Internet', 'icon': Icons.wifi_outlined},
    {'text': 'Refer&Earn', 'icon': Icons.monetization_on},
    {'text': 'More', 'icon': Icons.arrow_circle_right_rounded},
  ];

  // getRow1() {
  //   mylist.map((e) {
  //     return Padding(
  //       padding: const EdgeInsets.all(8.0),
  //       child: Column(
  //         children: [
  //           Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: Card(
  //               color: Colors.green.shade50,
  //               child: Icon(
  //                 e['icon'],
  //                 size: 30,
  //                 color: Colors.green,
  //               ),
  //             ),
  //           ),
  //           Text(e['text'])
  //         ],
  //       ),
  //     );
  //   }).toList();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Icon(Icons.supervised_user_circle_rounded),
                  MyTexts(
                    color: Colors.black,
                    text: 'Hi,User',
                    fontSize: 1,
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Icon(Icons.headphones_outlined),
                  Icon(Icons.qr_code_rounded),
                  Icon(Icons.notifications_none)
                ],
              ),
            )
          ],
        ),
      ),

      // body starts here
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.green.shade600,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyTexts(
                              color: Colors.white,
                              text: 'Available Balance',
                              fontSize: 1.1,
                            ),
                            MyTexts(
                              color: Colors.white,
                              text: 'Transaction History',
                              fontSize: 1.1,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                        child: Row(
                          children: [
                            MyTexts(
                              color: Colors.white,
                              text: '****',
                              fontSize: 1.1,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 25),
                        child: Row(
                          children: [
                            MyTexts(
                              color: Colors.white,
                              text: '& Cashback****',
                              fontSize: 1.1,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.add_circle_outline_rounded,
                                    color: Colors.white,
                                  ),
                                  MyTexts(
                                    color: Colors.white,
                                    text: 'Add money',
                                    fontSize: 1.1,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.compare_arrows,
                                    color: Colors.white,
                                  ),
                                  MyTexts(
                                    color: Colors.white,
                                    text: 'Transfer',
                                    fontSize: 1.1,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.arrow_outward_sharp,
                                    color: Colors.white,
                                  ),
                                  MyTexts(
                                    color: Colors.white,
                                    text: 'Withdraw',
                                    fontSize: 1.1,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // second card starts here

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...mylist.map((e) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.green[50],
                                    radius: 30,
                                    child: Icon(
                                      e['icon'],
                                      size: 30,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                                Text(e['text'])
                              ],
                            ),
                          );
                        })
                      ],
                    ),
                    // first widget ends here

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...mySecondList.map((e) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.green[50],
                                    radius: 30,
                                    child: Icon(
                                      e['icon'],
                                      size: 30,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                                Text(e['text'])
                              ],
                            ),
                          );
                        })
                      ],
                    )
                    // secod widgets ends here
                  ],
                ),
              ),
            ),

            // Refer Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              shadowColor: Colors.green.shade100,
                              color: Colors.greenAccent.shade100,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.green[50],
                                    child: Icon(
                                      Icons.monetization_on,
                                      color: Colors.green.shade600,
                                      size: 30.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MyTexts(
                                      color: Colors.black,
                                      text: 'Refer & Earn',
                                      fontSize: 1.3),
                                  MyTexts(
                                      color: Colors.black54,
                                      text: 'Earn N800 Cashback per referral',
                                      fontSize: 1.1)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.cancel,
                              color: Colors.grey.shade600,
                              size: 20.0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),


            SizedBox(
              height: 75,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  myCard(),
                  myCard(),
                  myCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

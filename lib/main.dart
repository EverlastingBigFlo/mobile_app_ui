// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

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
      body: Container(
        child: Column(
          children: [
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.green.shade600,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
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
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
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
                      margin: EdgeInsets.fromLTRB(0, 12, 0, 20),
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
                      margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
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

            Card(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ...mylist.map((e) => Icon(
                                    e['icon'],
                                    color: Colors.green.shade500,
                                    size: 30,
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ...mylist.map((e) => Text(
                                    e['text'],
                                    style: TextStyle(fontSize: 16),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

// old style
            // Card(
            //   elevation: 2,
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(15)),
            //   color: Colors.white,
            //   child: Padding(
            //       padding: const EdgeInsets.all(18.0),
            //       child: Column(
            //         children: [
            //           Container(
            //             margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Container(
            //                   child: Column(
            //                     children: [
            //                       Card(
            //                         margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
            //                         elevation: 5,
            //                         shadowColor: Colors.green.shade100,
            //                         color: Colors.greenAccent.shade100,
            //                         shape: RoundedRectangleBorder(
            //                             borderRadius:
            //                                 BorderRadius.circular(20)),
            //                         child: Row(
            //                           children: [
            //                             Icon(
            //                               Icons.app_settings_alt_rounded,
            //                               color: Colors.green.shade600,
            //                               size: 30.0,
            //                             )
            //                           ],
            //                         ),
            //                       ),
            //                       MyTexts(
            //                           color: Colors.black,
            //                           text: 'Airtime',
            //                           fontSize: 1.1)
            //                     ],
            //                   ),
            //                 ),
            //                 Container(
            //                   child: Column(
            //                     children: [
            //                       Card(
            //                         margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
            //                         elevation: 5,
            //                         shadowColor: Colors.green.shade100,
            //                         color: Colors.greenAccent.shade100,
            //                         shape: RoundedRectangleBorder(
            //                             borderRadius:
            //                                 BorderRadius.circular(20)),
            //                         child: Row(
            //                           children: [
            //                             Icon(
            //                               Icons.mobile_screen_share_sharp,
            //                               color: Colors.green.shade600,
            //                               size: 30.0,
            //                             )
            //                           ],
            //                         ),
            //                       ),
            //                       MyTexts(
            //                           color: Colors.black,
            //                           text: 'Data',
            //                           fontSize: 1.1)
            //                     ],
            //                   ),
            //                 ),
            //                 Container(
            //                   child: Column(
            //                     children: [
            //                       Card(
            //                         margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
            //                         elevation: 5,
            //                         shadowColor: Colors.green.shade100,
            //                         color: Colors.greenAccent.shade100,
            //                         shape: RoundedRectangleBorder(
            //                             borderRadius:
            //                                 BorderRadius.circular(20)),
            //                         child: Row(
            //                           children: [
            //                             Icon(
            //                               Icons.sports_soccer,
            //                               color: Colors.green.shade600,
            //                               size: 30.0,
            //                             )
            //                           ],
            //                         ),
            //                       ),
            //                       MyTexts(
            //                           color: Colors.black,
            //                           text: 'Betting',
            //                           fontSize: 1.1)
            //                     ],
            //                   ),
            //                 ),
            //                 Container(
            //                   child: Column(
            //                     children: [
            //                       Card(
            //                         margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
            //                         elevation: 5,
            //                         shadowColor: Colors.green.shade100,
            //                         color: Colors.greenAccent.shade100,
            //                         shape: RoundedRectangleBorder(
            //                             borderRadius:
            //                                 BorderRadius.circular(20)),
            //                         child: Row(
            //                           children: [
            //                             Icon(
            //                               Icons.live_tv,
            //                               color: Colors.green.shade600,
            //                               size: 30.0,
            //                             )
            //                           ],
            //                         ),
            //                       ),
            //                       MyTexts(
            //                           color: Colors.black,
            //                           text: 'TV',
            //                           fontSize: 1.1)
            //                     ],
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Container(
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Container(
            //                   child: Column(
            //                     children: [
            //                       Card(
            //                         margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
            //                         elevation: 5,
            //                         shadowColor: Colors.green.shade100,
            //                         color: Colors.greenAccent.shade100,
            //                         shape: RoundedRectangleBorder(
            //                             borderRadius:
            //                                 BorderRadius.circular(20)),
            //                         child: Row(
            //                           children: [
            //                             Icon(
            //                               Icons.lightbulb_outline,
            //                               color: Colors.green.shade600,
            //                               size: 30.0,
            //                             )
            //                           ],
            //                         ),
            //                       ),
            //                       MyTexts(
            //                           color: Colors.black,
            //                           text: 'Electricity',
            //                           fontSize: 1.1)
            //                     ],
            //                   ),
            //                 ),
            //                 Container(
            //                   child: Column(
            //                     children: [
            //                       Card(
            //                         margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
            //                         elevation: 5,
            //                         shadowColor: Colors.green.shade100,
            //                         color: Colors.greenAccent.shade100,
            //                         shape: RoundedRectangleBorder(
            //                             borderRadius:
            //                                 BorderRadius.circular(20)),
            //                         child: Row(
            //                           children: [
            //                             Icon(
            //                               Icons.wifi_outlined,
            //                               color: Colors.green.shade600,
            //                               size: 30.0,
            //                             )
            //                           ],
            //                         ),
            //                       ),
            //                       MyTexts(
            //                           color: Colors.black,
            //                           text: 'Internet',
            //                           fontSize: 1.1)
            //                     ],
            //                   ),
            //                 ),
            //                 Container(
            //                   child: Column(
            //                     children: [
            //                       Card(
            //                         margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
            //                         elevation: 5,
            //                         shadowColor: Colors.green.shade100,
            //                         color: Colors.greenAccent.shade100,
            //                         shape: RoundedRectangleBorder(
            //                             borderRadius:
            //                                 BorderRadius.circular(20)),
            //                         child: Row(
            //                           children: [
            //                             Icon(
            //                               Icons.monetization_on,
            //                               color: Colors.green.shade600,
            //                               size: 30.0,
            //                             )
            //                           ],
            //                         ),
            //                       ),
            //                       MyTexts(
            //                           color: Colors.black,
            //                           text: 'Refer&Earn',
            //                           fontSize: 1.1)
            //                     ],
            //                   ),
            //                 ),
            //                 Container(
            //                   child: Column(
            //                     children: [
            //                       Card(
            //                         margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
            //                         elevation: 5,
            //                         shadowColor: Colors.green.shade100,
            //                         color: Colors.greenAccent.shade100,
            //                         shape: RoundedRectangleBorder(
            //                             borderRadius:
            //                                 BorderRadius.circular(20)),
            //                         child: Row(
            //                           children: [
            //                             Icon(
            //                               Icons.arrow_circle_right_rounded,
            //                               color: Colors.green.shade600,
            //                               size: 30.0,
            //                             )
            //                           ],
            //                         ),
            //                       ),
            //                       MyTexts(
            //                           color: Colors.black,
            //                           text: 'More',
            //                           fontSize: 1.1)
            //                     ],
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ],
            //       )),
            // ),

            // Refer Section

            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                          shadowColor: Colors.green.shade100,
                          color: Colors.greenAccent.shade100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.monetization_on,
                                color: Colors.green.shade600,
                                size: 30.0,
                              )
                            ],
                          ),
                        ),
                        Container(
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
                      ],
                    ),
                  ),
                  Container(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

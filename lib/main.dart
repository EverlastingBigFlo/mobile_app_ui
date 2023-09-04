// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_opay/components/card_for_page_view.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:my_opay/pages/tab_view.dart';
// import 'package:my_opay/pages/new_page.dart';

import 'components/my_texts.dart';
import 'pages/new_page.dart';

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
      // home: const myNewPage(),
      // home: const myTabView(),
    );
  }
}

class MyOpay extends StatefulWidget {
  const MyOpay({super.key});

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

  PageController pageControl = PageController(initialPage: 0);
  int currPage = 0;
  late Timer mytime;

  @override
  void initState() {
    autoSlide();
    super.initState();
  }

  autoSlide() {
    mytime = Timer.periodic(Duration(seconds: 3), (timer) {
      currPage++;

      if (currPage < 2) {
        currPage++;
      } else {
        pageControl.jumpToPage(0);
        currPage = 0;
      }

      pageControl.animateToPage(currPage,
          duration: Duration(seconds: 1), curve: Curves.easeInCirc);
    });
  }

  @override
  void dispose() {
    mytime.cancel();
    pageControl.dispose();
    super.dispose();
  }

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
              padding: const EdgeInsets.all(7.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.green.shade600,
                child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Column(
                    children: [
                      Container(
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
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
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
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
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
              padding: const EdgeInsets.all(7.0),
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...mylist.map((e) {
                          return Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.green[50],
                                    radius: 25,
                                    child: Icon(
                                      e['icon'],
                                      size: 25,
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
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(1),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.green[50],
                                    radius: 25,
                                    child: Icon(
                                      e['icon'],
                                      size: 25,
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
              height: 70,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: pageControl,
                children: [
                  myCard(),
                  myCard(),
                  myCard(),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(0, 1, 0, 1),
            //   child: SmoothPageIndicator(
            //     controller: pageControl, // Use the same controller here
            //     count: 3, // Change this to the number of pages (cards)
            //     effect: WormEffect(), // Use your preferred effect
            //     // onDotClicked: (index) {
            //     //   // Handle dot click if needed
            //     // },
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green[500],
                    radius: 12,
                    child: Icon(
                      Icons.paypal,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  MyTexts(
                      color: Colors.green.shade500, text: 'Home', fontSize: .9)
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Icon(
                    Icons.diamond_sharp,
                    color: Colors.black54,
                    size: 25,
                  ),
                  MyTexts(color: Colors.black54, text: 'Rewards', fontSize: .9)
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Icon(
                    Icons.insert_chart_sharp,
                    color: Colors.black54,
                    size: 25,
                  ),
                  MyTexts(color: Colors.black54, text: 'Finance', fontSize: .9)
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Icon(
                    Icons.credit_card,
                    color: Colors.black54,
                    size: 25,
                  ),
                  MyTexts(color: Colors.black54, text: 'Cards', fontSize: .9)
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Icon(
                    Icons.account_circle_outlined,
                    color: Colors.black54,
                    size: 25,
                  ),
                  MyTexts(color: Colors.black54, text: 'Me', fontSize: .9)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

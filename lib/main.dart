// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_opay/components/card_for_page_view.dart';
import 'package:my_opay/new_page.dart';
import 'package:my_opay/pages/airtime.dart';
import 'package:my_opay/pages/reward_page.dart';
import 'package:my_opay/pages/tv.dart';
// import 'package:my_opay/form.dart';
// import 'package:my_opay/reward_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:my_opay/pages/tab_view.dart';
// import 'package:my_opay/pages/new_page.dart';

import 'components/my_texts.dart';
// import 'pages/new_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        // '/': (context) => myNewPage(),
        '/': (context) => MyOpay(),
        'reward': (context) => rewardPage(),
        'airtime': (context) => airtime(),
        'TV': (context) => tv(),
      },
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

      // const MyOpay()

      // const MyForm(),
      // MyRegistrationForm(),
      // const myNewPage(),
      // const myTabView(),
    );
  }
}

class MyOpay extends StatefulWidget {
  const MyOpay({super.key});

  @override
  State<MyOpay> createState() => _MyOpayState();
}

class _MyOpayState extends State<MyOpay> {
  // custom widget for the second card

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
    mytime = Timer.periodic(Duration(seconds: 2), (timer) {
      if (currPage >= 3) {
        currPage = 0;
      } else {
        currPage++;
      }

      pageControl.animateToPage(
        currPage,
        duration: Duration(seconds: 1),
        curve: Curves.easeInCirc,
      );
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
                    fontWeight: FontWeight.normal,
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
      body: SingleChildScrollView(
        child: Container(
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
                    padding: const EdgeInsets.all(14.0),
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
                                fontWeight: FontWeight.normal,
                              ),
                              MyTexts(
                                color: Colors.white,
                                text: 'Transaction History',
                                fontSize: 1.1,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 18),
                          child: Row(
                            children: [
                              MyTexts(
                                color: Colors.white,
                                text: '****',
                                fontSize: 1.1,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 15),
                          child: Row(
                            children: [
                              MyTexts(
                                color: Colors.white,
                                text: '& Cashback****',
                                fontSize: 1.1,
                                fontWeight: FontWeight.normal,
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
                                      fontWeight: FontWeight.normal,
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
                                      fontWeight: FontWeight.normal,
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
                                      fontWeight: FontWeight.normal,
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
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                width: 60,
                                child: InkWell(
                                  onTap: () {
                                    if (e['text'] == 'Airtime') {
                                      Navigator.pushNamed(context, 'airtime');
                                    } else if (e['text'] == 'Data') {
                                    } else if (e['text'] == 'Betting') {
                                    } else if (e['text'] == 'TV') {
                                      Navigator.pushNamed(context, 'TV');
                                    }
                                  },
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.green[50],
                                          radius: 15,
                                          child: Icon(
                                            e['icon'],
                                            size: 15,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text(e['text'])
                                    ],
                                  ),
                                ),
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
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.green[50],
                                      radius: 15,
                                      child: Icon(
                                        e['icon'],
                                        size: 15,
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
                    ],
                  ),
                ),
              ),

              // Refer Section
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: myCard(),
              ),

              Padding(
                padding: const EdgeInsets.all(3.0),
                child: SizedBox(
                  height: 75,
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
              ),
              SmoothPageIndicator(
                controller: pageControl,
                count: 3,
                effect: WormEffect(dotWidth: 8, dotHeight: 8),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: MaterialButton(
                onPressed: () => {},
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
                    Text(
                      'Home',
                      style: TextStyle(fontSize: 8, color: Colors.black54),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () => {Navigator.pushNamed(context, 'reward')},
                child: Column(
                  children: [
                    Icon(
                      Icons.diamond_sharp,
                      color: Colors.black54,
                      size: 20,
                    ),
                    Text(
                      'Rewards',
                      style: TextStyle(fontSize: 8, color: Colors.black54),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () => {},
                child: Column(
                  children: [
                    Icon(
                      Icons.insert_chart_sharp,
                      color: Colors.black54,
                      size: 20,
                    ),
                    Text(
                      'Finance',
                      style: TextStyle(fontSize: 9, color: Colors.black54),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () => {},
                child: Column(
                  children: [
                    Icon(
                      Icons.credit_card,
                      color: Colors.black54,
                      size: 20,
                    ),
                    Text(
                      'Cards',
                      style: TextStyle(fontSize: 8, color: Colors.black54),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () => {},
                child: Column(
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      color: Colors.black54,
                      size: 20,
                    ),
                    Text(
                      'Me',
                      style: TextStyle(fontSize: 8, color: Colors.black54),
                    )
                    // MyTexts(
                    //   color: Colors.black54,
                    //   text: 'Me',
                    //   fontSize: .6,
                    //   fontWeight: FontWeight.bold,
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

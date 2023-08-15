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

  @override
  State<MyOpay> createState() => _MyOpayState();
}

class _MyOpayState extends State<MyOpay> {
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
      // backgroundColor: Colors.greenAccent,
      body: Container(
        child: Column(
          children: [
            Card(
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
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyTexts(
                            color: Colors.white,
                            text: 'Available Balance',
                            fontSize: 1.2,
                          ),
                          MyTexts(
                            color: Colors.white,
                            text: 'Transaction History',
                            fontSize: 1.2,
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
                            fontSize: 1.2,
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
                            fontSize: 1.2,
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
                                  fontSize: 1.2,
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
                                  fontSize: 1.2,
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
                                  fontSize: 1.2,
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
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.white,
              child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.app_settings_alt_rounded,
                                    color: Colors.green.shade600,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container()
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

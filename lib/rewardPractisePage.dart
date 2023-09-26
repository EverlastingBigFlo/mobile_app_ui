// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_label

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:my_opay/components/myModals.dart';
// import 'package:flat_icons_flutter/flat_icons_flutter.dart';
// import 'package:my_opay/components/my_texts.dart';
// import 'package:my_opay/components/my_texts.dart';

class rewardPage extends StatelessWidget {
  const rewardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        exitModal().exit(context);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   onPressed: () {
          //     Navigator.of(context).pop();
          //   },
          //   icon: Icon(Icons.arrow_back_sharp),
          // ),
          backgroundColor: Colors.green[100],
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'opay');
                      },
                      child: Text('Go to Opay'))
                  // MyTexts(
                  //   color: Colors.black,
                  //   text: 'Rewards',
                  //   fontSize: 1.2,
                  //   fontWeight: FontWeight.bold,
                  // ),
                  // Container(
                  //   child: Image.asset('lib/icons/naira.png'),
                  // )
                ],
              ),
              Container(
                child: Row(
                  children: [
                    Row(
                      children: [Icon(Icons.currency_bitcoin)],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: [
              GestureDetector(
                onLongPress: () {
                  print('Dtap');
                },
                child: Text(' detector'),
              ),
              InkWell(
                onTap: () {
                  print("hello world");
                },
                child: Container(
                  child:
                      // Image.asset('lib/assets/background.webp')
                      Card(
                    child: Row(
                      children: [
                        Text('Hello World'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

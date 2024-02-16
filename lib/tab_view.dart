// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:my_opay/components/my_texts.dart';

class myTabView extends StatefulWidget {
  const myTabView({super.key});

  @override
  State<myTabView> createState() => _myTabViewState();
}

class _myTabViewState extends State<myTabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: const MyTexts(
            color: Colors.orange,
            text: 'T A B  B A R',
            fontSize: 2,
            fontWeight: FontWeight.normal,
          ),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                size: 35,
                color: Colors.brown[400],
              ),
            ),
            Tab(
              icon: Icon(
                Icons.settings,
                size: 35,
                color: Colors.grey[500],
              ),
            ),
            Tab(
              icon: Icon(
                Icons.supervised_user_circle,
                size: 35,
                color: Colors.blueGrey[400],
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            child: Center(
                child: MyTexts(
              color: Colors.white60,
              text: 'H O M E',
              fontSize: 2,
              fontWeight: FontWeight.normal,
            )),
            color: Colors.brown[400],
          ),
          Container(
            child: Center(
                child: MyTexts(
              color: Colors.white60,
              text: 'SETTINGS',
              fontSize: 2,
              fontWeight: FontWeight.normal,
            )),
            color: Colors.grey[500],
          ),
          Container(
            child: Center(
                child: MyTexts(
              color: Colors.white60,
              text: 'PROFILE',
              fontSize: 2,
              fontWeight: FontWeight.normal,
            )),
            color: Colors.blueGrey[400],
          ),
        ]),
      ),
    );
  }
}

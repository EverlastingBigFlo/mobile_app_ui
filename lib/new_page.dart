// ignore_for_file: camel_case_types, prefer_const_constructors
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';
import 'package:my_opay/components/my_texts.dart';

class myNewPage extends StatefulWidget {
  const myNewPage({super.key});

  @override
  State<myNewPage> createState() => _myNewPageState();
}

class _myNewPageState extends State<myNewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        title: MyTexts(
          color: Colors.purple.shade600,
          text: 'B U T T O N',
          fontSize: 1.5,
          fontWeight: FontWeight.normal,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  final SharedPreferences prefs =
                      await SharedPreferences.getInstance();

                  prefs.setString('username', 'Teslim');
                },
                child: Text('Set sHared')),
            ElevatedButton(
                onPressed: () async {
                  final SharedPreferences prefs =
                      await SharedPreferences.getInstance();

                  print(prefs.getString('username'));
                },
                child: Text('Get sHared')),
            ElevatedButton(
                onPressed: () async {
                  final SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.remove('username');
                  // print('Deleted');
                },
                child: Text('Delete'))
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class tv extends StatefulWidget {
  const tv({super.key});

  @override
  State<tv> createState() => _tvState();
}

class _tvState extends State<tv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'TV',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          children: [

//first card here
            Container(
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

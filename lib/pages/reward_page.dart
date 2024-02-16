// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:my_opay/components/my_texts.dart';

class rewardPage extends StatefulWidget {
  const rewardPage({super.key});

  @override
  State<rewardPage> createState() => _rewardPageState();
}

class _rewardPageState extends State<rewardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            MyTexts(
                color: Colors.black,
                text: 'Rewards',
                fontSize: 1.4,
                fontWeight: FontWeight.w900)
          ],
        ),
      ),
    );
  }
}

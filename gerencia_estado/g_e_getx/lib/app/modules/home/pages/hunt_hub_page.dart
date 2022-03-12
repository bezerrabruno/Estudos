import 'package:flutter/material.dart';

import '../widgets/my_butto_bar.dart';

class HuntHubPage extends StatefulWidget {
  const HuntHubPage({Key? key}) : super(key: key);

  @override
  State<HuntHubPage> createState() => _HuntHubPageState();
}

class _HuntHubPageState extends State<HuntHubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyButtonBar('homeBar'),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(children: [
          const Text(
            'Hunts',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            height: 50,
            width: double.maxFinite,
            color: Colors.amberAccent,
          ),
          const SizedBox(height: 32),
          Container(
            height: 50,
            width: double.maxFinite,
            color: Colors.black,
          ),
          const SizedBox(height: 32),
          Container(
            height: 50,
            width: double.maxFinite,
            color: Colors.greenAccent,
          ),
          const SizedBox(height: 32),
          Container(
            height: 50,
            width: double.maxFinite,
            color: Colors.pinkAccent,
          ),
          const SizedBox(height: 32),
          Container(
            height: 50,
            width: double.maxFinite,
            color: Colors.deepPurpleAccent,
          ),
          const SizedBox(height: 32),
          Container(
            height: 50,
            width: double.maxFinite,
            color: Colors.redAccent,
          ),
          const SizedBox(height: 32),
          Container(
            height: 50,
            width: double.maxFinite,
            color: Colors.purpleAccent,
          ),
        ]),
      ),
    );
  }
}

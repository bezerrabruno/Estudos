import 'package:flutter/material.dart';

import '../widgets/my_time.dart';

class CalculusPage extends StatefulWidget {
  const CalculusPage({Key? key}) : super(key: key);

  @override
  State<CalculusPage> createState() => _CalculusPageState();
}

class _CalculusPageState extends State<CalculusPage> {
  bool load = false;

  DateTime init = DateTime.now();
  DateTime end = DateTime.now();

  Color color1 = Colors.black;
  Color color2 = Colors.black;
  Color color3 = Colors.black;
  Color color4 = Colors.black;
  Color color5 = Colors.black;
  Color color6 = Colors.black;
  Color color7 = Colors.black;
  Color color8 = Colors.black;
  Color color9 = Colors.black;
  Color color10 = Colors.black;
  Color color11 = Colors.black;
  Color color12 = Colors.black;

  update() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Calculus'),
        actions: [
          InkWell(
            onTap: () => resetColor(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 25,
                color: Colors.black38,
                child: const Center(
                  child: Text(
                    'R',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () async {
                  if (!load) {
                    changeAwait();
                  }
                },
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.blueAccent,
                  child: const Center(
                    child: Text(
                      'Original',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              MyTime(init: init, end: end),
              InkWell(
                onTap: () {
                  if (!load) {
                    change();
                  }
                },
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.blueAccent,
                  child: const Center(
                    child: Text(
                      'Refac',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              card(color1),
              card(color2),
              card(color3),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              card(color4),
              card(color5),
              card(color6),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              card(color7),
              card(color8),
              card(color9),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              card(color10),
              card(color11),
              card(color12),
            ],
          ),
        ],
      ),
    );
  }

  Widget card(Color color) {
    return Container(
      height: 100,
      width: 100,
      color: color,
    );
  }

  Future<void> change() async {
    load = true;
    init = DateTime.now();
    update();

    final list = await Future.wait([
      changeColor(1),
      changeColor(2),
      changeColor(1),
      changeColor(1),
      changeColor(1),
      changeColor(2),
      changeColor(5),
      changeColor(4),
      changeColor(2),
      changeColor(2),
      changeColor(1),
      changeColor(1),
    ]);

    color1 = list.elementAt(0);
    update();

    color2 = list.elementAt(1);
    update();

    color3 = list.elementAt(2);
    update();

    color4 = list.elementAt(3);
    update();

    color5 = list.elementAt(4);
    update();

    color6 = list.elementAt(5);
    update();

    color7 = list.elementAt(6);
    update();

    color8 = list.elementAt(7);
    update();

    color9 = list.elementAt(8);
    update();

    color10 = list.elementAt(9);
    update();

    color11 = list.elementAt(10);
    update();

    color12 = list.elementAt(11);
    update();

    end = DateTime.now();
    update();

    load = false;
  }

  Future<void> changeAwait() async {
    load = true;
    init = DateTime.now();
    update();

    color1 = await changeColor(1);
    update();

    color2 = await changeColor(2);
    update();

    color3 = await changeColor(1);
    update();

    color4 = await changeColor(1);
    update();

    color5 = await changeColor(1);
    update();

    color6 = await changeColor(2);
    update();

    color7 = await changeColor(5);
    update();

    color8 = await changeColor(4);
    update();

    color9 = await changeColor(2);
    update();

    color10 = await changeColor(2);
    update();

    color11 = await changeColor(1);
    update();

    color12 = await changeColor(1);
    update();

    end = DateTime.now();
    update();

    load = false;
  }

  Future<Color> changeColor(int time) async {
    await Future.delayed(Duration(seconds: time));

    return Colors.blueGrey;
  }

  void resetColor() async {
    color1 = Colors.black;
    color2 = Colors.black;
    color3 = Colors.black;
    color4 = Colors.black;
    color5 = Colors.black;
    color6 = Colors.black;
    color7 = Colors.black;
    color8 = Colors.black;
    color9 = Colors.black;
    color10 = Colors.black;
    color11 = Colors.black;
    color12 = Colors.black;

    update();
  }
}

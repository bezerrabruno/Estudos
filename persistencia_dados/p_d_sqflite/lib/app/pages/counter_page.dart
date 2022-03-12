import 'package:flutter/material.dart';

import '../data/dao/user_dao.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final dao = UserDao();

  String userName = '';
  int clicks = 0;

  getUserName() async {
    userName = await dao.findName();
    setState(() {});
  }

  getClicks() async {
    clicks = await dao.findClicks();
    setState(() {});
  }

  setClicks(int clicks) async {
    await dao.updateClicks(clicks);
  }

  @override
  Widget build(BuildContext context) {
    getUserName();
    getClicks();
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Clicks $userName'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$clicks',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setClicks(clicks + 1),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

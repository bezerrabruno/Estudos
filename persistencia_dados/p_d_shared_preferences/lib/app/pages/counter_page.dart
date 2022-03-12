import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  String userName = '';
  int clicks = 0;

  getUserName() async {
    final _prefs = await SharedPreferences.getInstance();
    userName = _prefs.getString('userName') ?? '';
    setState(() {});
  }

  getClicks() async {
    final _prefs = await SharedPreferences.getInstance();
    clicks = _prefs.getInt('clicks') ?? 0;
    setState(() {});
  }

  setClicks(int clicks) async {
    final _prefs = await SharedPreferences.getInstance();
    await _prefs.setInt('clicks', clicks + 1);
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
        onPressed: () => setClicks(clicks),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

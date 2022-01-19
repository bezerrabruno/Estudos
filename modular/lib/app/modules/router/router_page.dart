import 'package:flutter/material.dart';

class RouterPage extends StatelessWidget {
  const RouterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: <Widget>[
              _card('Rota 1', Colors.amber),
              _card('Rota 2', Colors.amber),
              _card('Rota 3', Colors.amber),
              _card('Rota 4', Colors.amber),
              _card('Rota 5', Colors.amber),
            ],
          ),
        ),
      ),
    );
  }

  Widget _card(String title, Color color) {
    return Container(
      height: 150,
      width: double.maxFinite,
      margin: const EdgeInsets.all(32),
      color: color,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}

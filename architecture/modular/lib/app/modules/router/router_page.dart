import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RouterPage extends StatelessWidget {
  const RouterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _card(
                'Rota 1',
                () => Modular.to.pushNamed('module1/'),
              ),
              _card(
                'Rota 2',
                () => Modular.to.pushReplacementNamed('module2/'),
              ),
              _card(
                'Rota 3',
                () => Modular.to.navigate('module3/'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _card(String title, Function() onTap) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: SizedBox(
        height: 150,
        width: double.maxFinite,
        child: Material(
          color: Colors.amber,
          elevation: 10,
          child: InkWell(
            onTap: onTap,
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _card(context, title: 'dependencies', route: '/dependencies/'),
          _card(context, title: 'router', route: '/router/'),
        ],
      ),
    );
  }

  Widget _card(
    BuildContext context, {
    required String title,
    required String route,
  }) {
    return SizedBox(
      height: 100,
      width: double.maxFinite,
      child: Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () => Modular.to.pushNamed(route),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 56,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

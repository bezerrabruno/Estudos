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
          Center(
            child: GestureDetector(
              onTap: () => Modular.to.pushNamed('/router/'),
              child: const Text(
                'Routes',
                style: TextStyle(
                  fontSize: 56,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () => Modular.to.pushNamed('/dependencies/'),
              child: const Text(
                'dependencies',
                style: TextStyle(
                  fontSize: 56,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

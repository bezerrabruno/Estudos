import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/app/core/routes/routes.dart';

class MyButtonBar extends StatelessWidget {
  final String tag;

  const MyButtonBar(this.tag, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: Material(
        color: Colors.blueAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.hunt),
              child: const Text('Hunt'),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.profile),
              child: const Text('profile'),
            ),
          ],
        ),
      ),
    );
  }
}

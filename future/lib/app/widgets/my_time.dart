import 'package:flutter/material.dart';

class MyTime extends StatelessWidget {
  final DateTime init;
  final DateTime end;

  const MyTime({
    Key? key,
    required this.init,
    required this.end,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 120,
      color: Colors.blueAccent,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Init: '
              '${init.minute}:'
              '${init.second}:'
              '${init.millisecond}',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Text(
              'End: '
              '${end.minute}:'
              '${end.second}:'
              '${end.millisecond}',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

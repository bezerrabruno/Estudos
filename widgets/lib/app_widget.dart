import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'pages/home_widget.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          routes: {
            '/home': (context) => const HomeWidget(),
          },
          initialRoute: '/home',
        );
      },
    );
  }
}

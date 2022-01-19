import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/my_scaffold.dart';
import '../widgets/my_card.dart';
import '../widgets/my_float_button.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      floatButton: MyFloatButton(
        color: Colors.blue[800],
      ),
      buttomBar: const SizedBox(),
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 8.h),
              const Align(
                alignment: Alignment.center,
                child: MyCard(),
              ),
              SizedBox(height: 3.h),
              const Align(
                alignment: Alignment.center,
                child: MyCard(),
              ),
              SizedBox(height: 3.h),
              const Align(
                alignment: Alignment.center,
                child: MyCard(),
              ),
              SizedBox(height: 3.h),
              const Align(
                alignment: Alignment.center,
                child: MyCard(),
              ),
              SizedBox(height: 3.h),
              const Align(
                alignment: Alignment.center,
                child: MyCard(),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}

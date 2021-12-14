import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '/widgets/my_scaffold.dart';
import '/widgets/my_card.dart';

class SearchNewsPage extends StatefulWidget {
  const SearchNewsPage({Key? key}) : super(key: key);

  @override
  State<SearchNewsPage> createState() => _SearchNewsPageState();
}

class _SearchNewsPageState extends State<SearchNewsPage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      buttomBar: const SizedBox(),
      body: Column(
        children: [
          SizedBox(height: 8.h),
          Material(
            color: Colors.blue[800],
            borderRadius: BorderRadius.circular(26),
            child: SizedBox(
              height: 6.h,
              width: 80.w,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                  ),
                  cursorColor: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 2.h),
          SizedBox(
            height: 80.55.h,
            width: 100.w,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 1.h),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

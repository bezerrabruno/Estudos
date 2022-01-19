import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(16),
      color: Colors.blue,
      child: SizedBox(
        height: 30.h,
        width: 90.w,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'News',
            style: TextStyle(
              fontSize: 30.sp,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

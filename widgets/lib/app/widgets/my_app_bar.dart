import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  final Color? color;
  final List<Widget>? action;

  const MyAppBar({
    Key? key,
    required this.title,
    this.color,
    this.action,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      color: color ?? Theme.of(context).primaryColor,
      child: SafeArea(
        child: SizedBox(
          height: 6.5.h,
          width: 100.w,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(children: action ?? []),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

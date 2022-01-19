import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyScaffold extends StatelessWidget {
  final Widget body;
  final Color? color;
  final Widget? appBar;
  final Widget? buttomBar;
  final Widget? floatButton;

  const MyScaffold({
    Key? key,
    required this.body,
    this.color,
    this.appBar,
    this.buttomBar,
    this.floatButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      child: SizedBox(
        height: 100.h,
        width: 100.w,
        child: SafeArea(
          child: Stack(
            children: [
              body,
              Align(
                alignment: Alignment.topCenter,
                child: appBar ?? const SizedBox(),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: buttomBar ?? const SizedBox(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 6.w, vertical: buttomBar == null ? 3.h : 9.h),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: floatButton,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

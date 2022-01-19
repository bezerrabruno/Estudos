import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyIconButton extends StatelessWidget {
  final Function()? onTap;

  const MyIconButton({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        onTap: onTap ?? () => true,
        borderRadius: BorderRadius.circular(100),
        child: SizedBox(
          height: 50,
          width: 50,
          child: Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.settings,
              size: 22.sp,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

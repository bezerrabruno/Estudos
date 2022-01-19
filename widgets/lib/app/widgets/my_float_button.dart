import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyFloatButton extends StatelessWidget {
  final Color? color;

  const MyFloatButton({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      color: color ?? Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        onTap: () => popUp(context),
        borderRadius: BorderRadius.circular(100),
        child: const SizedBox(
          height: 55,
          width: 55,
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 36,
          ),
        ),
      ),
    );
  }

  Future popUp(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Material(
            color: Colors.blue,
            child: SizedBox(
              height: 30.h,
              width: 70.w,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Creator',
                  style: TextStyle(
                    fontSize: 30.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/my_scaffold.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      buttomBar: const SizedBox(),
      body: Material(
        child: SizedBox(
          height: 100.h,
          width: 100.w,
          child: Column(
            children: [
              SizedBox(
                height: 8.h,
              ),
              const SizedBox(
                height: 200,
                width: 200,
                child: Material(
                  color: Colors.blue,
                  shape: CircleBorder(),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Material(
                color: Colors.blue,
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'Info',
                        style: TextStyle(
                          fontSize: 24.sp,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Info',
                        style: TextStyle(
                          fontSize: 24.sp,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Info',
                        style: TextStyle(
                          fontSize: 24.sp,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Info',
                        style: TextStyle(
                          fontSize: 24.sp,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Info',
                        style: TextStyle(
                          fontSize: 24.sp,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Info',
                        style: TextStyle(
                          fontSize: 24.sp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

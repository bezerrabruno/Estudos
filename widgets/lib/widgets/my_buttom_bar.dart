import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '/blocs/change_page_bloc.dart';

class MyButtomBar extends StatelessWidget {
  final Bloc<dynamic, int> barBloc;
  final Color? color;

  const MyButtomBar({
    Key? key,
    required this.barBloc,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Bloc<dynamic, int>, int>(
      bloc: barBloc,
      builder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
          child: Material(
            color: color ?? Theme.of(context).primaryColor,
            elevation: 10,
            borderRadius: BorderRadius.circular(32),
            child: SizedBox(
              height: 7.h,
              width: double.maxFinite,
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _iconButton(
                        title: 'News',
                        index: 0,
                        indexBloc: index,
                        iconSelected: Icons.insert_chart,
                        iconUnselected: Icons.insert_chart_outlined_rounded,
                        onTap: () => barBloc.add(ChangePageEvent.page1),
                      ),
                      _iconButton(
                        title: 'Search',
                        index: 1,
                        indexBloc: index,
                        iconSelected: Icons.search,
                        iconUnselected: Icons.search_off,
                        onTap: () => barBloc.add(ChangePageEvent.page2),
                      ),
                      _iconButton(
                        title: 'Perfil',
                        index: 2,
                        indexBloc: index,
                        iconSelected: Icons.account_circle,
                        iconUnselected: Icons.account_circle_outlined,
                        onTap: () => barBloc.add(ChangePageEvent.page3),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _iconButton({
    required String title,
    required int index,
    required int indexBloc,
    required IconData iconSelected,
    IconData? iconUnselected,
    Function()? onTap,
  }) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        onTap: onTap ?? () => true,
        borderRadius: BorderRadius.circular(100),
        child: SizedBox(
          height: 7.h,
          width: 14.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                indexBloc == index
                    ? iconSelected
                    : iconUnselected ?? iconSelected,
                color: indexBloc == index ? Colors.white : Colors.grey[600],
                size: 30,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: indexBloc == index ? Colors.white : Colors.grey[600],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

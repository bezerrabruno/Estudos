import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../blocs/change_page_bloc.dart';

import '../widgets/my_app_bar.dart';
import '../widgets/my_scaffold.dart';
import '../widgets/my_buttom_bar.dart';
import '../widgets/my_icon_button.dart';

import 'news_page.dart';
import 'search_new_page.dart';
import 'user_page.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final ChangePageBloc bloc = ChangePageBloc();

  List<Widget> pages = [
    const NewsPage(),
    const SearchNewsPage(),
    const UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      color: Colors.grey[300],
      appBar: MyAppBar(
        title: 'TopNews',
        color: Colors.blue[800],
        action: [
          MyIconButton(
            onTap: () => popUp(context),
          ),
        ],
      ),
      buttomBar: MyButtomBar(
        barBloc: bloc,
        color: Colors.blue[800],
      ),
      body: BlocBuilder<ChangePageBloc, int>(
        bloc: bloc,
        builder: (context, page) {
          return pages[page];
        },
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
                  'Config',
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

import 'package:flutter_bloc/flutter_bloc.dart';

enum ChangePageEvent {
  page1,
  page2,
  page3,
}

class ChangePageBloc extends Bloc<ChangePageEvent, int> {
  ChangePageBloc() : super(0);

  @override
  Stream<int> mapEventToState(ChangePageEvent event) async* {
    switch (event) {
      case ChangePageEvent.page1:
        yield 0;
        break;
      case ChangePageEvent.page2:
        yield 1;
        break;
      case ChangePageEvent.page3:
        yield 2;
        break;
    }
  }
}

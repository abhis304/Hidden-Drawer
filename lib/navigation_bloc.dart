import 'package:hideden_drawer_flutter/HomeScreen.dart';
import 'package:hideden_drawer_flutter/account_page.dart';
import 'package:hideden_drawer_flutter/order_page.dart';
import 'package:bloc/bloc.dart';

enum NavigationEvents {
  HomePageClickEvent,
  MyAccountPageClickEvent,
  MyOrdersPageClickEvent,
}

abstract class NavigationState {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationState> {
  @override
  NavigationState get initialState => HomeScreen();

  @override
  Stream<NavigationState> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickEvent:
        yield HomeScreen();
        break;
      case NavigationEvents.MyAccountPageClickEvent:
        yield AccountPage();
        break;
      case NavigationEvents.MyOrdersPageClickEvent:
        yield OrderPage();
        break;
    }
  }
}

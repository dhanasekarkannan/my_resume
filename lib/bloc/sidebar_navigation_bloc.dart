import 'package:flutter_bloc/flutter_bloc.dart';

import '../screen/home_screen.dart';
import '../screen/aboutme_screen.dart';
import '../screen/work_screen.dart';
import '../screen/contact_screen.dart';


enum NavigationEvents{
  HomeClickedEvent,
  AboutMeClickedEvent,
  ContactClickedEvent,
  PassionClickedEvent,
  SkillsClickedEvent,
  WorkClickedEvent,
}

abstract class NavigationStates {}


class SidebarNavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => HomeScreen();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event){
      case NavigationEvents.HomeClickedEvent:
      yield HomeScreen();
      break;
      case NavigationEvents.AboutMeClickedEvent:
      yield AboutMeScreen();
        break;
      case NavigationEvents.ContactClickedEvent:
      yield ContactScreen();
        break;
      case NavigationEvents.PassionClickedEvent:
      yield HomeScreen();
        break;
      case NavigationEvents.SkillsClickedEvent:
      yield HomeScreen();
        break;
      case NavigationEvents.WorkClickedEvent:
      yield WorkScreen();
        break;
    }
  }

}
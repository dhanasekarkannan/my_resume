import 'package:flutter_bloc/flutter_bloc.dart';

import '../screen/home_screen.dart';
import '../screen/aboutme_screen.dart';
import '../screen/work_screen.dart';
import '../screen/contact_screen.dart';
import '../screen/passion_screen.dart';
import '../screen/skills_screen.dart';

enum NavigationEvents {
  HomeClickedEvent,
  AboutMeClickedEvent,
  ContactClickedEvent,
  PassionClickedEvent,
  SkillsClickedEvent,
  WorkClickedEvent,
}

abstract class NavigationStates {}

class SidebarNavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  SidebarNavigationBloc() : super(HomeScreen());

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomeClickedEvent:
        yield HomeScreen();
        break;
      case NavigationEvents.AboutMeClickedEvent:
        yield AboutMeScreen();
        break;
      case NavigationEvents.ContactClickedEvent:
        yield ContactScreen();
        break;
      case NavigationEvents.SkillsClickedEvent:
        yield SkillsScreen();
        break;
      case NavigationEvents.PassionClickedEvent:
        yield PassionScreen();
        break;
      case NavigationEvents.WorkClickedEvent:
        yield WorkScreen();
        break;
    }
  }
}

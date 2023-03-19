import 'package:Step/screens/notification/Notification.dart';
import 'package:Step/screens/home/home_screen.dart';
import 'package:Step/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'Controllers/NotificationController.dart';
import 'components/constants.dart';

class BottomNavBar extends StatefulWidget {
  int i;

  BottomNavBar({super.key, this.i=1});

  @override
  State<StatefulWidget> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  void initState() {
    // checkPermissionLocation();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final PersistentTabController controller = PersistentTabController(initialIndex: 1);

    return SafeArea(
        child: Scaffold(
          body: WillPopScope(
              onWillPop: onWillPopMainScreen,
              child: StatefulBuilder(builder:
                  (BuildContext context, void Function(void Function()) setState) {
                return PersistentTabView(
                  context,
                  controller: controller,
                  screens:  [
                    ProfileScreen(),
                    HomeScreen(),
                    Latters(),
                  ],
                  stateManagement: false,
                  onItemSelected: (v) {
                    setState(() {});
                  },
                  items: [
                    PersistentBottomNavBarItem(
                      icon: Icon(Icons.settings_outlined,
                      size: 30,),
                      title: ("Seting"),
                      activeColorPrimary: kPrimaryColor,
                      inactiveColorPrimary: Colors.grey,
                    ),
                    PersistentBottomNavBarItem(
                      icon: Padding(
                          padding: const EdgeInsets.all(5),
                          child: SvgPicture.asset('assets/icons/homegray.svg',
                              color: controller.index == 1 ? kPrimaryColor : null)),
                      title: ("home"),
                      activeColorPrimary: kPrimaryColor,
                      inactiveColorPrimary: Colors.grey,
                    ),
                    PersistentBottomNavBarItem(
                      icon: Padding(
                          padding: const EdgeInsets.all(5),
                          child: SvgPicture.asset(
                              "assets/icons/notification.svg",
                              color: controller.index == 2 ? kPrimaryColor : Colors.grey)),
                      title: ("notification"),
                      activeColorPrimary: kPrimaryColor,
                      inactiveColorPrimary: Colors.grey,
                    ),
                  ],
                  navBarStyle: NavBarStyle.style12,
                );
              })),
        ));
  }
  int backPressCounter = 0;

  Future<bool> onWillPopMainScreen() {
    if (backPressCounter < 1) {
      backPressCounter++;
      Future.delayed(const Duration(seconds: 2), () {
        backPressCounter--;
      });
      return Future.value(false);
    } else {

        SystemNavigator.pop();

      return Future.value(true);
    }
  }
}

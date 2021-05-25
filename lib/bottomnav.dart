import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_app/page/bookmarkpage.dart';
import 'package:order_app/advancecreditswidgets/profilepage.dart';
import 'package:order_app/page/searchpage.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'page/homepage.dart';
import 'page/orderpage.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears.
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style12, // Choose the nav bar style with this property.
    );
  }
}

List<Widget> _buildScreens() {
  return [HomePage(), SearchPage(), OrderPage(), BookmarkPage(), ProfilePage()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.home_outlined),
      title: ("Home"),
      activeColorPrimary: Color(0xffFE0007),
      inactiveColorPrimary: Color(0xff707070),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.search),
      title: ("Search"),
      activeColorPrimary: Color(0xffFE0007),
      inactiveColorPrimary: Color(0xff707070),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.shopping_bag_outlined),
      title: ("Order"),
      activeColorPrimary: Color(0xffFE0007),
      inactiveColorPrimary: Color(0xff707070),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.notifications_outlined),
      title: ("Notification"),
      activeColorPrimary: Color(0xffFE0007),
      inactiveColorPrimary: Color(0xff707070),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.person_fill),
      title: ("Profile"),
      activeColorPrimary: Color(0xffFE0007),
      inactiveColorPrimary: Color(0xff707070),
    ),
  ];
}

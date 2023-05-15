import 'package:flutter/material.dart';
import 'package:my_app/navigation_drawer/widget/my_header_drawer_widget.dart';
import 'package:my_app/navigation_drawer/widget/my_list_drawer_widget.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({super.key});

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  ValueNotifier<MyDrawerSections> currentPage =
      ValueNotifier(MyDrawerSections.home);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),
      ),
      body: Center(
        child: Text("Nav Drawer"),
      ),
      drawer: Drawer(
          child: SingleChildScrollView(
        child: Column(
          children: [
            MyHeaderDrawerWidget(),
            MyListDrawerWidget(currentPage: currentPage),
          ],
        ),
      )),
    );
  }
}

enum MyDrawerSections {
  home,
  contact,
  event,
  profile,
  setting,
}

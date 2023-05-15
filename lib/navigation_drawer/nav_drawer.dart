import 'package:flutter/material.dart';
import 'package:my_app/navigation_drawer/widget/my_header_drawer_widget.dart';
import 'package:my_app/navigation_drawer/widget/my_list_drawer_widget.dart';
import 'package:my_app/screens/home_page.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({super.key});

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  ValueNotifier<MyDrawerSections> currentPage =
      ValueNotifier(MyDrawerSections.home);
  ValueNotifier<Widget> container = ValueNotifier(HomePage());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Navigation Drawer"),
      // ),
      body: ValueListenableBuilder(
        valueListenable: container,
        builder: (context, value, child) {
          return container.value;
        },
      ),
      drawer: Drawer(
          child: SingleChildScrollView(
        child: Column(
          children: [
            MyHeaderDrawerWidget(),
            MyListDrawerWidget(
              currentPage: currentPage,
              container: container,
            ),
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

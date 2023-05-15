import 'package:flutter/material.dart';
import 'package:my_app/navigation_drawer/nav_drawer.dart';
import 'package:my_app/screens/contact_page.dart';
import 'package:my_app/screens/event_page.dart';
import 'package:my_app/screens/home_page.dart';
import 'package:my_app/screens/profile_page.dart';
import 'package:my_app/screens/setting_page.dart';

class MyListDrawerWidget extends StatefulWidget {
  MyListDrawerWidget(
      {super.key, required this.currentPage, required this.container});

  ValueNotifier<MyDrawerSections> currentPage;
  ValueNotifier<Widget> container;

  @override
  State<MyListDrawerWidget> createState() => _MyListDrawerWidgetState();
}

class _MyListDrawerWidgetState extends State<MyListDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(1, "Home", Icons.home_outlined,
              widget.currentPage.value == MyDrawerSections.home ? true : false),
          menuItem(
              2,
              "Contact",
              Icons.people_alt_outlined,
              widget.currentPage.value == MyDrawerSections.contact
                  ? true
                  : false),
          menuItem(
              3,
              "Event",
              Icons.event,
              widget.currentPage.value == MyDrawerSections.event
                  ? true
                  : false),
          Divider(),
          menuItem(
              4,
              "Profile",
              Icons.person_2_outlined,
              widget.currentPage.value == MyDrawerSections.profile
                  ? true
                  : false),
          menuItem(
              5,
              "Setting",
              Icons.settings_outlined,
              widget.currentPage.value == MyDrawerSections.setting
                  ? true
                  : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          switch (id) {
            case 1:
              widget.currentPage.value = MyDrawerSections.home;
              widget.container.value = HomePage();
              break;
            case 2:
              widget.currentPage.value = MyDrawerSections.contact;
              widget.container.value = ContactPage();
              break;
            case 3:
              widget.currentPage.value = MyDrawerSections.event;
              widget.container.value = EventPage();

              break;
            case 4:
              widget.currentPage.value = MyDrawerSections.profile;
              widget.container.value = ProfilePage();

              break;
            case 5:
              widget.currentPage.value = MyDrawerSections.setting;
              widget.container.value = SettingPage();

              break;
            default:
          }
        },
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 16),
                child: Icon(
                  icon,
                  size: 20,
                  color: selected ? Colors.green : Colors.black,
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  title,
                  style: TextStyle(
                      color: selected ? Colors.green : Colors.black,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

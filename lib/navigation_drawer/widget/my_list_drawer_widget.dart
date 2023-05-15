import 'package:flutter/material.dart';
import 'package:my_app/navigation_drawer/nav_drawer.dart';

class MyListDrawerWidget extends StatefulWidget {
  MyListDrawerWidget({super.key, required this.currentPage});

  ValueNotifier<MyDrawerSections> currentPage;

  @override
  State<MyListDrawerWidget> createState() => _MyListDrawerWidgetState();
}

class _MyListDrawerWidgetState extends State<MyListDrawerWidget> {
  //  widget.currentPage = MyDrawerSections.home;
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
              break;
            case 2:
              widget.currentPage.value = MyDrawerSections.contact;
              break;
            case 3:
              widget.currentPage.value = MyDrawerSections.event;
              break;
            case 4:
              widget.currentPage.value = MyDrawerSections.profile;
              break;
            case 5:
              widget.currentPage.value = MyDrawerSections.setting;
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
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

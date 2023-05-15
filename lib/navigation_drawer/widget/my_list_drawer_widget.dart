import 'package:flutter/material.dart';

class MyListDrawerWidget extends StatefulWidget {
  const MyListDrawerWidget({super.key});

  @override
  State<MyListDrawerWidget> createState() => _MyListDrawerWidgetState();
}

class _MyListDrawerWidgetState extends State<MyListDrawerWidget> {
  var currentPage = MyDrawerSections.home;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(1, "Home", Icons.home_outlined,
              currentPage == MyDrawerSections.home ? true : false),
          menuItem(2, "Contact", Icons.people_alt_outlined,
              currentPage == MyDrawerSections.contact ? true : false),
          menuItem(3, "Event", Icons.event,
              currentPage == MyDrawerSections.event ? true : false),
          Divider(),
          menuItem(4, "Profile", Icons.person_2_outlined,
              currentPage == MyDrawerSections.profile ? true : false),
          menuItem(5, "Setting", Icons.settings_outlined,
              currentPage == MyDrawerSections.setting ? true : false),
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
          setState(() {
            switch (id) {
              case 1:
                currentPage = MyDrawerSections.home;
                break;
              case 2:
                currentPage = MyDrawerSections.contact;
                break;
              case 3:
                currentPage = MyDrawerSections.event;
                break;
              case 4:
                currentPage = MyDrawerSections.profile;
                break;
              case 5:
                currentPage = MyDrawerSections.setting;
                break;
              default:
            }
          });
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

enum MyDrawerSections {
  home,
  contact,
  event,
  profile,
  setting,
}

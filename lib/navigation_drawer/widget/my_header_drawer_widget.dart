import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyHeaderDrawerWidget extends StatefulWidget {
  const MyHeaderDrawerWidget({super.key});

  @override
  State<MyHeaderDrawerWidget> createState() => _MyHeaderDrawerWidgetState();
}

class _MyHeaderDrawerWidgetState extends State<MyHeaderDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                    'https://nld.mediacdn.vn/2019/12/1/dolphin-1575173065795393546713.jpg'),
              ),
            ),
          ),
          Text(
            "Nguyễn Cá Heo",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "caheo01@gmail.com",
            style: TextStyle(color: Colors.grey[200], fontSize: 14),
          ),
        ],
      ),
    );
  }
}

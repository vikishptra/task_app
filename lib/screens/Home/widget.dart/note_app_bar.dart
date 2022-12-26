import 'package:flutter/material.dart';

class WidgetSliverAppBar extends StatelessWidget {
  const WidgetSliverAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 244, 89, 89),
              Color.fromARGB(255, 95, 183, 225),
            ],
          ),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.edit,
            color: Color.fromARGB(255, 243, 235, 235),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            "Task Management",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

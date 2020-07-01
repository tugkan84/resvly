import 'package:flutter/material.dart';

class HomePageTextWidget extends StatelessWidget {
  final String title;
  final double size;
  HomePageTextWidget({this.title,this.size = 22});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: size, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

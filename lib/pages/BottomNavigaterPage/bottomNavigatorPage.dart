import 'package:flutter/material.dart';
import 'package:resvly/common/backgroundGradient.dart';
import 'package:resvly/pages/HomePage/homePage.dart';
import 'package:resvly/pages/ManageReservation/manageReservation.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void selectIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final TextStyle style = TextStyle(color: Colors.deepOrange);
  int _currentIndex = 0;
  List<Widget> _children = [
    HomePage(),
    BackgroundContainer(
      child: null,
    ),
    ManageReservationPage(),
    BackgroundContainer(
      child: null,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _children[
          _currentIndex], 
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectIndex,
        currentIndex:
            _currentIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.home,
              color: Colors.deepOrange,
            ),
            title: new Text(
              'Home',
              style: style,
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.search,
              color: Colors.deepOrange,
            ),
            title: new Text(
              'Search',
              style: style,
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.local_dining,
              color: Colors.deepOrange,
            ),
            title: new Text(
              'Reservations',
              style: style,
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.deepOrange,
              ),
              title: Text(
                'Profile',
                style: style,
              ))
        ],
      ),
    );
  }
}

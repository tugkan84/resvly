import 'package:flutter/material.dart';
import 'package:resvly/common/backgroundGradient.dart';
import 'package:resvly/pages/HomePage/categoryListView.dart';
import 'package:resvly/pages/HomePage/restaurantListWidget.dart';
import 'package:resvly/pages/HomePage/textWidget.dart';

class HomePage extends StatelessWidget {

  final List<String> entries = <String>[
    'Fine Dining',
    'Casual Dining',
    'Contemporary Casual',
    'Family Style',
    'Fast Casual',
    'Fast Food',
    'Cafe'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BackgroundContainer(
        child: Column(
          children: <Widget>[
            Container(
              child: HomePageTextWidget(title: "Categories"),
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            // SizedBox(height: 20,),
            Container(
              child: CategoryListView(),
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Container(
              child: HomePageTextWidget(title: "Restaurants"),
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            RestaurantListWidget(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:resvly/common/listRowWidget.dart';
import 'package:resvly/models/listModel.dart';

class MealListWidget extends StatelessWidget {
 final mealList = ListModel().mealModel();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.54,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: mealList.length,
        itemBuilder: (context, index) {
          return ListRow(
            image: mealList[index].image,
            title: mealList[index].title,
            point: mealList[index].point,
            description: mealList[index].description,
            routedPage: mealList[index].routedPage,
            showDetail: false,
          );
        },
      ),
    );
  }
}

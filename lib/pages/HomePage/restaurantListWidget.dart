import 'package:flutter/material.dart';
import 'package:resvly/common/listRowWidget.dart';
import 'package:resvly/models/listModel.dart';

class RestaurantListWidget extends StatelessWidget {
 final restaurantList = ListModel().restaurantModel();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.54,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: restaurantList.length,
        itemBuilder: (context, index) {
          return ListRow(
            image: restaurantList[index].image,
            title: restaurantList[index].title,
            point: restaurantList[index].point,
            description: restaurantList[index].description,
            routedPage: restaurantList[index].routedPage,
            showDetail: true,
          );
        },
      ),
    );
  }
}

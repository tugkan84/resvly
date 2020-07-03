import 'package:flutter/widgets.dart';
import 'package:resvly/pages/OrderMeal/ordermealPage.dart';
import 'package:resvly/pages/ReservationPage/reservationPage.dart';

class ListModel {
  String image;
  String title;
  String point;
  String description;
  Widget routedPage;

  ListModel({this.image, this.title, this.point,this.description, this.routedPage});

  List<ListModel> restaurantModel() {
    var list = new List<ListModel>();

    list.add(ListModel(
      image: 'images/gino.png',
      title: 'Gino Pizza',
      point: "9.0",
      description: 'Distance: 3 km',
      routedPage: ReservationPage(
        selectedRestaurant: 'Gino Pizza',
      ),
    ));
    list.add(ListModel(
      image: 'images/Harvey.png',
      title: 'Harvey\'s',
      point: "8.5",
      description: 'Distance: 1.8 km',
      routedPage: ReservationPage(
        selectedRestaurant: 'Harvey\'s',
      ),
    ));
    list.add(ListModel(
      image: 'images/Swiss.png',
      title: 'Swiss Chalet',
      point: "8.5",
      description: 'Distance: 2 km',
      routedPage: ReservationPage(
        selectedRestaurant: 'Swiss Chalet',
      ),
    ));
    list.add(ListModel(
      image: 'images/pizza_hut.png',
      title: 'PizzaHut',
      point: "9.0",
      description: 'Distance: 4 km',
      routedPage: ReservationPage(
        selectedRestaurant: 'PizzaHut',
      ),
    ));

    return list;
  }

 List<ListModel> mealModel() {
    var list = new List<ListModel>();

    list.add(ListModel(
      image: 'images/burger-unsplash.jpg',
      title: 'Burger',
      point: "9.0",
      description: 'Fresh meat with secret sauce',
      routedPage: OrderMealPage(),
    ));
    list.add(ListModel(
      image: 'images/taco-unsplash.jpg',
      title: 'Taco',
      point: "8.5",
      description: 'Taco with meat and salad',
      routedPage: OrderMealPage(),
    ));
    list.add(ListModel(
      image: 'images/meatball-unsplash.jpg',
      title: 'Meat Balls',
      point: "8.5",
      description: 'Meatballs with secret sauce',
      routedPage: ReservationPage(
        selectedRestaurant: 'Swiss Chalet',
      ),
    ));
    list.add(ListModel(
      image: 'images/Garlic-Soup-14.jpg',
      title: 'Soup',
      point: "9.0",
      description: 'Roasted Garlic Soup with Kale',
      routedPage: ReservationPage(
        selectedRestaurant: 'PizzaHut',
      ),
    ));
    list.add(ListModel(
      image: 'images/steak-unsplash.jpg',
      title: 'Steak',
      point: "9.0",
      description: 'Steak with secret sauce',
      routedPage: ReservationPage(
        selectedRestaurant: 'PizzaHut',
      ),
    ));

    return list;
  }


}

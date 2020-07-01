import 'package:flutter/material.dart';
import 'package:resvly/pages/ReservationPage/reservationPage.dart';

class RestaurantListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.54,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          RestaurantRow(
            image: 'images/gino.png',
            title: 'Gino Pizza',
            point: "9.0",
          ),RestaurantRow(
            image: 'images/Harvey.png',
            title: 'Harvey\'s',
            point: "8.5",
          ),RestaurantRow(
            image: 'images/Swiss.png',
            title: 'Swiss Chalet',
            point: "8.4",
          ),RestaurantRow(
            image: 'images/pizza_hut.png',
            title: 'PizzaHut',
            point: "9.0",
          ),
        ],
      ),
    );
  }
}

class RestaurantRow extends StatelessWidget {
  final String image;
  final String title;
  final String point;
  RestaurantRow({this.image, this.title, this.point});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ReservationPage(selectedRestaurant: title,),),)
      },
          child: Container(
        height: 120.0,
        margin: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 16.0,
        ),
        child: Stack(
          children: <Widget>[
            RestaurantBlock(
              resName: title,
              point: point,
            ),
            RestaurantImage(
              image: image,
            ),
          ],
        ),
      ),
    );
  }
}

class RestaurantImage extends StatelessWidget {
  final String image;
  RestaurantImage({this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 5, color: Colors.white),
            color: Colors.white,
          ),
          child: Image(
            image: AssetImage(image),
            height: 92,
            width: 92,
          ),
        ),
      ),
    );
  }
}

class RestaurantBlock extends StatelessWidget {
  final String resName;
  final String point;

  RestaurantBlock({this.resName, this.point});

  final TextStyle style = new TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124,
      // margin: EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.deepOrange,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(left: 70, top: 20),
        // color: Colors.amber,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(left: 46),
                // color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      resName,
                      style: style,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Distance: 2km'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Available at 19:30'),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(left: 15,right: 55),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.deepOrange[400],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Container(
                  child: Text(
                    point,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

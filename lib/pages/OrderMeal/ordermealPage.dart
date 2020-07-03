import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:resvly/common/backgroundGradient.dart';
import 'package:resvly/pages/BottomNavigaterPage/bottomNavigatorPage.dart';
import 'package:resvly/pages/OrderMeal/mealListWidget.dart';
import 'package:resvly/pages/WelcomePage/welcomePage.dart';

class OrderMealPage extends StatefulWidget {
  @override
  _OrderMealPageState createState() => _OrderMealPageState();
}

class _OrderMealPageState extends State<OrderMealPage> {
  TextStyle _style = TextStyle(color: Colors.white, fontSize: 16);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Meals"),
      ),
      body: BackgroundContainer(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(3, 3),
                          blurRadius: 2,
                          spreadRadius: 2),
                    ]),
                child: Text(
                  "Your order will be ready when you reach to the restaurant",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
                flex: 7,
                child: Container(
                  child: MealListWidget(),
                )),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WelcomePage(),
                              ),
                              (route) => false);
                        },
                        child: Text("Cancel", style: _style,),
                        color: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 4,
                      child: RaisedButton(
                        onPressed: () {
                          AwesomeDialog(
                              context: context,
                              animType: AnimType.LEFTSLIDE,
                              headerAnimationLoop: false,
                              dialogType: DialogType.SUCCES,
                              title: 'Succes',
                              desc:
                                  'We will inform you when restaurant confirms your reservation',
                              btnOkOnPress: () {
                                // debugPrint('OnClcik');
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                              title: "Resvly",
                                            )),
                                    (route) => false);
                              },
                              btnOkIcon: Icons.check_circle,
                              onDissmissCallback: () {
                                debugPrint('Dialog Dissmiss from callback');
                              }).show();
                        },
                        child: Text("Order Now", style: _style,),
                        color: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

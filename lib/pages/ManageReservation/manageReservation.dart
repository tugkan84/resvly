import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:resvly/common/backgroundGradient.dart';
import 'package:resvly/pages/BottomNavigaterPage/bottomNavigatorPage.dart';
import 'package:resvly/pages/ChatPage/chatPage.dart';


class ManageReservationPage extends StatefulWidget {
  @override
  _ManageReservationPageState createState() => _ManageReservationPageState();
}

class _ManageReservationPageState extends State<ManageReservationPage> {
  final TextStyle _textStyle =
      TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold);

  DateTime _selectedDate = DateTime.now();
  bool _babychair = false;
  bool _selectedTime = true;

  void changeBabyValue(bool value) {
    setState(() {
      _babychair = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(3, 5),
                      blurRadius: 10,
                      spreadRadius: 1)
                ],
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: Text(
                            'Number of Guests',
                            style: _textStyle,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          textAlign: TextAlign.right,
                          initialValue: '2',
                          style: _textStyle,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.deepOrange, width: 2.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.deepOrange, width: 2.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "Baby chair",
                                  style: _textStyle,
                                ),
                                Checkbox(
                                  value: _babychair,
                                  onChanged: changeBabyValue,
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "Nonsmoking",
                                  style: _textStyle,
                                ),
                                Checkbox(
                                  value: _babychair,
                                  onChanged: changeBabyValue,
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "Disability",
                                  style: _textStyle,
                                ),
                                Checkbox(
                                  value: _babychair,
                                  onChanged: changeBabyValue,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(3, 5),
                      blurRadius: 10,
                      spreadRadius: 1)
                ],
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "Select Date and Time",
                        style: _textStyle.copyWith(color: Colors.deepOrange),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () => {
                          showDatePicker(
                            context: context,
                            initialDate: _selectedDate == null
                                ? DateTime.now()
                                : _selectedDate,
                            firstDate: DateTime.now(),
                            // selectableDayPredicate: _predicate,
                            lastDate: DateTime(2021),
                          ).then((value) {
                            setState(() {
                              _selectedDate = value;
                            });
                          })
                        },
                        child: Text(
                          "Change Date",
                          style: _textStyle.copyWith(color: Colors.white),
                        ),
                        color: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.red)),
                      ),
                      Text(
                        _selectedDate == null
                            ? DateTime.now().toLocal().toString().split(' ')[0]
                            : _selectedDate.toLocal().toString().split(' ')[0],
                        style: _textStyle,
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Wrap(
                      children: [
                        ChoiceChip(
                          label: Text(
                            '19:00',
                            style: _textStyle,
                          ),
                          selected: false,
                          onSelected: (bool selected) {
                            setState(() {});
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ChoiceChip(
                          label: Text(
                            '19:30',
                            style: _textStyle.copyWith(
                                color: _selectedTime
                                    ? Colors.white
                                    : Colors.black),
                          ),
                          selected: _selectedTime,
                          onSelected: (bool selected) {
                            setState(() {
                              _selectedTime = selected;
                            });
                          },
                          selectedColor: Theme.of(context).accentColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ChoiceChip(
                          label: Text(
                            '20:00',
                            style: _textStyle,
                          ),
                          selected: false,
                          onSelected: (bool selected) {
                            setState(() {});
                          },
                          selectedColor: Theme.of(context).accentColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ChoiceChip(
                          label: Text(
                            '20:30',
                            style: _textStyle,
                          ),
                          selected: false,
                          onSelected: (bool selected) {
                            setState(() {});
                          },
                          selectedColor: Theme.of(context).accentColor,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            AwesomeDialog(
                                context: context,
                                headerAnimationLoop: false,
                                dialogType: DialogType.INFO,
                                animType: AnimType.BOTTOMSLIDE,
                                title: 'INFO',
                                desc:
                                    'We will inform restaurant for cancelatoin.',
                                btnOkOnPress: () {
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
                          child: Text(
                            "Cancel",
                            style: _textStyle.copyWith(color: Colors.black),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.deepOrange)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FlatButton(
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
                          child: Text(
                            "Change",
                            style: _textStyle.copyWith(color: Colors.white),
                          ),
                          color: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatPage()),
                              );
                            },
                            child: Text(
                              "Chat with Restaurant",
                              style: _textStyle.copyWith(color: Colors.white),
                            ),
                            color: Colors.deepOrange,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.red)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

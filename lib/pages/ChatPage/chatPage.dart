import 'package:flutter/material.dart';
import 'package:resvly/common/backgroundGradient.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Chat"),
        ),
        body: BackgroundContainer(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 7,
                child: Column(
                  children: <Widget>[
                    LeftChat(
                      chat: "Welcome to restaurant. How can we help you?",
                    ),
                    RightChat(
                      chat: "Hi, Do you have birthday cake?",
                    ),
                    LeftChat(
                      chat:
                          "No, sorry but if you get one with you we can serve it.",
                    ),
                    RightChat(
                      chat: "Excellent, Thanks.",
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.transparent,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              margin: EdgeInsets.all(10),
                              child: TextFormField(
                                textAlign: TextAlign.right,
                                initialValue: '2',
                                // style: _textStyle,
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
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.deepOrange, width: 4),
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                icon: Icon(Icons.send),
                                tooltip: 'Increase volume by 10',
                                onPressed: () {},
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class LeftChat extends StatelessWidget {
  final String chat;
  LeftChat({this.chat});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage("images/gino.png"),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Text(chat),
            ),
          ),
        ],
      ),
    );
  }
}

class RightChat extends StatelessWidget {
  final String chat;
  RightChat({this.chat});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Flexible(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Text(chat),
            ),
          ),
        ],
      ),
    );
  }
}

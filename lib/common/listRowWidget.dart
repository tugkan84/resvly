import 'package:flutter/material.dart';

class ListRow extends StatelessWidget {
  final String image;
  final String title;
  final String point;
  final String description;
  final Widget routedPage;
  final bool showDetail;
  ListRow(
      {this.image, this.title, this.point, this.routedPage, this.description, this.showDetail});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => routedPage),
        )
      },
      child: Container(
        height: 120.0,
        margin: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 8.0,
        ),
        child: Stack(
          children: <Widget>[
            ListBlock(
              resName: title,
              point: point,
              desc: description,
              showDetail: showDetail,
            ),
            ListImage(
              image: image,
            ),
          ],
        ),
      ),
    );
  }
}

class ListImage extends StatelessWidget {
  final String image;
  ListImage({this.image});
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

class ListBlock extends StatelessWidget {
  final String resName;
  final String point;
  final bool showDetail;
  final String desc;

  ListBlock({this.resName, this.point, this.desc, this.showDetail});

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
        margin: EdgeInsets.only(left: 70, top: 10,bottom: 10),
        // color: Colors.amber,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(left: 40,top: 0),
                // color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10,),
                    Text(
                      resName,
                      style: style,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(desc),
                    SizedBox(
                      height:showDetail ? 10 : 0,
                    ),
                    showDetail ? Text('Available at 19:30') : Text(''),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child:Container(
                margin: EdgeInsets.only(left: showDetail ? 35: 4,right: showDetail ? 30 : 6,bottom: showDetail ? 10 : 20 , top: showDetail ? 0 : 20),
                padding: EdgeInsets.all( showDetail ? 10:0),
                decoration: BoxDecoration(
                    color: Colors.deepOrange[400],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: showDetail ? Container(
                  child: Text(
                    point,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ) : Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.add), onPressed: (){}, color: Colors.white,),
                      Text('0', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      IconButton(icon: Icon(Icons.remove), onPressed: (){},color: Colors.white,),
                    ],
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

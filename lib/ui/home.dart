import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Home extends StatelessWidget {
  List<BottomNavigationBarItem> _list = new List();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _list.add(new BottomNavigationBarItem(icon: new Icon(Icons.person),title:new Text("Profile",style: new TextStyle(fontSize: 15.0),)));
    _list.add(new BottomNavigationBarItem(icon: new Icon(Icons.my_location),title:new Text("Location",style: new TextStyle(fontSize: 15.0),)));
    _list.add(new BottomNavigationBarItem(icon: new Icon(Icons.contact_phone),title:new Text("ContactMe",style: new TextStyle(fontSize: 15.0),)));

    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orangeAccent,
        title: new SizedBox(
          width: 270.0,
          child: new Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(width: 20.0, height: 100.0),
              Text(
                "Be",
                style: TextStyle(fontSize: 19.0, fontFamily: "Ultra"),
              ),
              SizedBox(width: 20.0, height: 80.0),
              RotateAnimatedTextKit(
                  onTap: () {
                    print("Tap Event");
                  },
                  text: ["HARDWORKING", "OPTIMISTIC", "DEXTROXD"],
                  textStyle: TextStyle(fontSize: 20.0, fontFamily: "Monton"),
                  textAlign: TextAlign.start,
                  alignment:
                      AlignmentDirectional.topStart // or Alignment.topLeft
                  ),
            ],
          ),
        ),
      ),
      body: new Container(
        color: Colors.black38,
        child: new Column(
          children: <Widget>[

          ],
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(items: _list,backgroundColor: Colors.orangeAccent,iconSize:20.0,onTap: (int i)=>debugPrint("On Pressed $i"),),
    );
  }
}

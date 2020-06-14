import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker_example/recognize.dart';

class Menu extends StatefulWidget {
  @override
  MenuPageState createState() => MenuPageState();
}

class MenuPageState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Menu"),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  RaisedButton(

                    child: SizedBox(
                      width: double.infinity,
                      child: Text("recognizeCelebrities"),
                    ),
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Recognize()))
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(

                    child: SizedBox(
                      width: double.infinity,
                      child: Text("Compare Faces"),
                    ),
                    onPressed: () => {

                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  )
                ],
              )
          ),
        ],
      ),
    );
  }

/*   onPressed() {
    Navigator.push(
        context,
        MaterialPageRoute( builder: (context) => Recognize()));
  }*/
}

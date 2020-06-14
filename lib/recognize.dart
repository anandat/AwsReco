import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_example/src/RekognitionHandler.dart';

import 'models/CelebrityFacesModel.dart';

class Recognize extends StatefulWidget {
  @override
  RecognizeState createState() => RecognizeState();
}

class RecognizeState extends State<Recognize> {
  RekognitionHandler rekognitionHandler = RekognitionHandler(
      "AKIASFOAT4D77UCVKZBZ",
      "lYf5WpwuxpHKlkHNVTxtq+0RPTIba/zNln/kNfaO",
      "ap-south-1");
  File setImage;
  CelebrityFacesModel celebrityFacesModel;
  List<dynamic> data;
  Map<String, dynamic> cel;
  var b;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Amazon Rekognition"),
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.yellow,
              height: 20,
              child: RaisedButton(
                child: Text("Pick Image"),
                onPressed: () {
                  pickImage();
                },
              ),
            ),
            Container(
              height: 400,
              width: 200,
              child: _previewImage(),
            ),
            Visibility(
              visible: setImage != null,
              child: Column(
                children: <Widget>[
                  Container(
                      child: Row(
                    children: <Widget>[
                      RaisedButton(
                        child: Text("NetworkCall"),
                        onPressed: () {
                          networkCall();
                        },
                      ),
                      /*RaisedButton(
                        child: Text("detectText"),
                        onPressed: () {
                          networkCall();
                        },
                      ),
                      RaisedButton(
                        child: Text("detectLabels"),
                        onPressed: () {
                          networkCall();
                        },
                      ),*/
                    ],
                  )),
                 /* RaisedButton(
                    child: Text("detectModerationLabels"),
                    onPressed: () {
                      networkCall();
                    },
                  ),
                  RaisedButton(
                    child: Text("detectFaces"),
                    onPressed: () {
                      networkCall();
                    },
                  ),*/
                  Container(
                      //  child: Text(data[0]),
                      child: values())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  values() {
    if (b == null) {
      return Text("Select any serivice");
    } else {
      return Column(
        children: <Widget>[
          Text(b["CelebrityFaces"][0]["Name"]),
          Text(b["CelebrityFaces"][0]["MatchConfidence"].toString()),
        ],
      );
    }
  }

  pickImage() async {
    File pick = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      setImage = pick;
    });
  }

  networkCall() async {
    var a = await rekognitionHandler.recognizeCelebrities(setImage);
    print(a);
    setState(() {
      b = a;
    });
  }
  networkCallText() async {
    var a = await rekognitionHandler.recognizeCelebrities(setImage);
    print(a);
    setState(() {
      b = a;
    });
  }
  networkCalllabels() async {
    var a = await rekognitionHandler.recognizeCelebrities(setImage);
    print(a);
    setState(() {
      b = a;
    });
  }
  networkCallMlabels() async {
    var a = await rekognitionHandler.recognizeCelebrities(setImage);
    print(a);
    setState(() {
      b = a;
    });
  }
  networkCallFaces() async {
    var a = await rekognitionHandler.recognizeCelebrities(setImage);
    print(a);
    setState(() {
      b = a;
    });
  }


  _previewImage() {
    if (setImage != null) {
      return Image.file(setImage);
    } else {
      return const Text(
        'You have not yet picked an image.',
        textAlign: TextAlign.center,
      );
    }
  }
}

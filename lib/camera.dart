import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'nav.dart';

void main() => runApp(new CameraPage());

class CameraPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Camera',
      home: new Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text('Camera'),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: new Center(
          child: _image == null
              ? new Text('No image selected')
              : new Image.file(_image),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: getImage,
          tooltip: 'Pick image',
          child: new Icon(Icons.camera),
        ),
      ),
    );
  }
}

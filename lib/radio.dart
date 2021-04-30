import 'package:app/nav.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_radio/flutter_radio.dart';

void main() => runApp(new RadioPage());

class RadioPage extends StatefulWidget {
  @override
  _RadioPageState createState() => new _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {

  String url = "https://aac-64.streamthejazzgroove.com/stream";

  bool isPlaying = false;
  bool isVisible = true;

  @override
  void initState() {
    super.initState();
    audioStart();
  }

  Future<void> audioStart() async {
    await FlutterRadio.audioStart();
    print('Audio Start OK');
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Radio',
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          drawer: NavDrawer(),
          appBar: new AppBar(
            title: const Text('Radio'),
            backgroundColor: Colors.black,
            centerTitle: true,
          ),
          body: Container(
            color: Colors.white,
            child: new Column(
              children: <Widget>[
                Expanded(
                  flex: 7,
                  child: Icon(
                    Icons.radio, size: 250,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Align(
                      alignment: FractionalOffset.center,
                      child: IconButton(icon: isPlaying? Icon(
                        Icons.pause_circle_outline,
                        size: 80,
                        color: Colors.black,
                      )
                          : Icon(
                        Icons.play_circle_outline,
                        color: Colors.black,
                        size: 80,
                      ),
                        onPressed: (){
                          setState(() {
                            FlutterRadio.play(url: url);
                            isPlaying = !isPlaying;
                            isVisible = !isVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50,)
              ],
            ),
          ),
        ));
  }
}

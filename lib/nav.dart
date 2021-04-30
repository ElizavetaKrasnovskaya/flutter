import 'package:app/camera.dart';
import 'package:app/radio.dart';
import 'package:app/video.dart';
import 'package:app/web.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Info'),
            onTap: () => {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => MyApp(),
                ),
              ),
            },
          ),
          ListTile(
            leading: Icon(Icons.radio),
            title: Text('Radio'),
            onTap: () => {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => RadioPage(),
                ),
              ),
            },
          ),
          ListTile(
            leading: Icon(Icons.videocam),
            title: Text('Video'),
            onTap: () => {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      VideoPlayerPage(),
                ),
              ),
            },
          ),

          ListTile(
            leading: Icon(Icons.web),
            title: Text('Web site'),
            onTap: () => {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => WebPage(),
                ),
              ),
            },
          ),
          ListTile(
            leading: Icon(Icons.camera),
            title: Text('Camera'),
            onTap: () => {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => CameraPage(),
                ),
              ),
            },
          ),
        ],
      ),
    );
  }
}

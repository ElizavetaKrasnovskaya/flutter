import 'package:app/nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(WebPage());

class WebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Web site",
        home: Scaffold(
          drawer: NavDrawer(),
          appBar: AppBar(
            title: Text('Web site'),
            backgroundColor: Colors.black,
            centerTitle: true,
          ),
          body: WebView(
            initialUrl: "https://flutter.dev",
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ));
  }
}

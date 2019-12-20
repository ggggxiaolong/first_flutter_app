import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: DefaultTextStyle(
          style: TextStyle(
            color: Colors.red,
            fontSize: 20.0
          ),
          textAlign: TextAlign.start,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Hello world",
                textAlign: TextAlign.center,
              ),
              Text(
                "Hello world! I'm Jack. " * 4,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                "Hello world",
                textScaleFactor: 1.5,
                style: TextStyle(color: Colors.greenAccent, fontSize: 32.0),
              ),
              Text(
                "Hello world " * 12,
                textAlign: TextAlign.center,
              ),
              Text(
                "Hello world",
                style: TextStyle(
                  inherit: false,
                  color: Colors.blue,
                  fontSize: 18.0,
                  height: 1.2,
                  fontFamily: "Courier",
                  background: Paint()..color = Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed,
                ),
              ),
              Text.rich(TextSpan(children: [
                TextSpan(text: "Home: "),
                TextSpan(
                  text: "https://flutterchina.club",
                  style: TextStyle(
                      color: Colors.blue, decoration: TextDecoration.underline),
                )
              ])),
            ],
          ),
        ));
  }
}

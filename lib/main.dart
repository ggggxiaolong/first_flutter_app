import 'package:first_flutter_app/foucusTestRoute.dart';
import 'package:first_flutter_app/home.dart';
import 'package:first_flutter_app/progressRoute.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: {
        "new_page": (context) => NewRoute(),
      },
//      home: TextFiledWidget(title: 'TextField'),
//    home: FocusTestRoute(),
//    home: FormTestRoute(),
    home: ProgressRoute(),
    );
  }
}

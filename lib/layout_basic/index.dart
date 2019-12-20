import 'package:flutter/material.dart';

final List<String> layouts = <String>[
  'Row && Column',
  'Flexible Widget',
  'Expanded widget',
  'SizedBox widget',
  'Spacer widget',
  'Text widet',
  'Icon widget',
  'Image widget'
];

class LayoutBasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Basic Layout")),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: layouts.length,
          itemBuilder: (context, index) => FlatButton(
            child: Text(
              layouts[index],
              style: TextStyle(fontSize: 16.0),
            ),
            color: Colors.amber[300],
            splashColor: Colors.amber[600],
            onPressed: () => {},
            padding: EdgeInsets.all(16.0),
            textColor: Colors.white,
          ),
          separatorBuilder: (context, index) => Divider(
            height: 8.0,
            color: Colors.transparent,
          ),
        ));
  }
}

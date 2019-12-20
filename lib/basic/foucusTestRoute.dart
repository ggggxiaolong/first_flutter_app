import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FocusTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FocusTestRouteState();
}

class _FocusTestRouteState extends State<FocusTestRoute> {
  FocusNode node1 = FocusNode();
  FocusNode node2 = FocusNode();
  FocusScopeNode scope;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              focusNode: node1,
              decoration: InputDecoration(labelText: "input1"),
            ),
            TextField(
              focusNode: node2,
              decoration: InputDecoration(
                labelText: "input2",
              ),
            ),
            Builder(builder: (ctx) {
              return Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text("移动焦点"),
                    onPressed: () {
                      if (null == scope) {
                        scope = FocusScope.of(context);
                      }
                      scope.requestFocus(node2);
                    },
                  ),
                  RaisedButton(
                    child: Text("隐藏键盘"),
                    onPressed: () {
                      node1.unfocus();
                      node2.unfocus();
                    },
                  ),
                ],
              );
            })
          ],
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonTestWidget extends StatelessWidget {
  const ButtonTestWidget({Key key, @required this.title});

  final String title;

  void _toast(BuildContext context){
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("pressed"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Builder(
        builder: (context) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RaisedButton(
                  child: Text("normal"),
                  onPressed: () => _toast(context),
                ),
                FlatButton(
                  child: Text("Flat button"),
                  onPressed: () => _toast(context),
                ),
                OutlineButton(
                  child: Text("Outline button"),
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(Icons.thumb_up),
                  onPressed: (){},
                ),
                FlatButton(
                  color: Colors.blue,
                  child: Text("Submit"),
                  highlightColor: Colors.blue[700],
                  colorBrightness: Brightness.dark,
                  splashColor: Colors.grey,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                  onPressed: (){},
                ),
                RaisedButton(
                  color: Colors.blue,
                  child: Text("Submit raise"),
                  highlightColor: Colors.blue[700],
                  colorBrightness: Brightness.dark,
                  splashColor: Colors.blue[200],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                  onPressed: (){},
                )
              ],
            ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckBoxWidget extends StatefulWidget {
  final String title;

  const CheckBoxWidget({Key key, @required this.title}) : super(key: key);

  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool _isSwitchChecked = false;
  bool _isCheckBoxChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Switch(
              value: _isSwitchChecked,
              onChanged: (v) => setState(() {
                    _isSwitchChecked = v;
                  }),
            ),
            Checkbox(
              value: _isCheckBoxChecked,
              activeColor: Colors.red,
              onChanged: (v) => setState(() {
                    _isCheckBoxChecked = v;
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

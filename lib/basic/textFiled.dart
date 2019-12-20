
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextFiledWidget extends StatelessWidget{
  final String title;
  const TextFiledWidget({Key key, @required this.title}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              labelText: "username",
              hintText: "username or email",
              prefixIcon: Icon(Icons.person),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "password",
              hintText: "password",
              prefixIcon: Icon(Icons.lock),
            ),
            obscureText: true,
          ),
          Container(
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Email address",
                prefixIcon: Icon(Icons.mail),
                border: InputBorder.none
              ),
            ),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[200], width: 1.0))
            ),
          ),
          CustomeTextWidget()
        ],
      ),
    );
  }
}

class CustomeTextWidget extends StatefulWidget{
  @override
  _CustomeTextWidgetState createState() => _CustomeTextWidgetState();
}
class _CustomeTextWidgetState extends State<CustomeTextWidget>{

  FocusNode _node = FocusNode();
  bool _isActive = false;

  @override
  void initState() {
    super.initState();
    _node.addListener((){
      setState(() {
        _isActive = _node.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      child: TextField(
        focusNode: _node,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: "Email",
          hintText: "Please fill in email",
          prefixIcon: Icon(Icons.mail),
          border: InputBorder.none,
        ),
      ),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: _isActive? theme.accentColor: Colors.grey[200],))),
    );
  }

}
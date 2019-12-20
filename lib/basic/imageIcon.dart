import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageIconWidget extends StatelessWidget {
  const ImageIconWidget({Key key, @required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("images/heaven.png"),
              width: 200.0,
            ),
            Image.asset(
              "assets/1.2.webp",
              width: 150,
            ),
            Image(
              image: NetworkImage(
                  "https://cdn.dribbble.com/users/1009388/screenshots/3332059/artboard_26____7.jpg"),
              width: 150,
            ),
            Image.network(
              "https://cdn.dribbble.com/users/912691/screenshots/2689137/__2-03.png",
              width: 160,
            ),
            Text(
              "\uE914 \uE000 \uE90D",
              style: TextStyle(
                  fontFamily: "MaterialIcons",
                  fontSize: 24.0,
                  color: Colors.green),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.accessible, color: Colors.green,),
                Icon(Icons.error, color: Colors.green,),
                Icon(Icons.fingerprint, color: Colors.green,),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  Widget homeBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'test',
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homeBody(),
    );
  }
}

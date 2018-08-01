import 'package:flutter/material.dart';

class MenuRowItemWidget extends StatelessWidget {
  final String icon;
  final String content;
  final GestureTapCallback onTap;

  MenuRowItemWidget({
    @required this.icon,
    @required this.content,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage(icon),
            width: 18.0,
            height: 18.0,
          ),
          SizedBox(height: 13.0),
          Text(
            content,
            style: TextStyle(color: Colors.black, fontSize: 11.0),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}

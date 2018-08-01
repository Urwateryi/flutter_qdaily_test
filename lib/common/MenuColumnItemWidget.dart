import 'package:flutter/material.dart';

class MenuColumnItemWidget extends StatelessWidget {
  final String icon;
  final String content;
  final GestureTapCallback onTap;

  MenuColumnItemWidget({
    @required this.icon,
    @required this.content,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(
        image: AssetImage(icon),
        width: 28.0,
        height: 28.0,
      ),
      title: Text(content, style: TextStyle(fontSize: 15.0)),
      onTap: onTap,
    );
  }
}

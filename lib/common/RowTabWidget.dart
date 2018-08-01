import 'package:flutter/material.dart';
import 'package:flutter_qdaily_test/model/ColumnDto.dart';

class RowTabWidget extends StatefulWidget {

  final ColumnDto dto;
  RowTabWidget(this.dto);

  @override
  _RowTabWidgetState createState() => _RowTabWidgetState();
}

class _RowTabWidgetState extends State<RowTabWidget> {
  @override
  Widget build(BuildContext context) {

    ColumnDto columnDto=widget.dto;

    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(columnDto.icon),
            radius: 12.0,
          ),
          SizedBox(width: 10.0),
          Expanded(
              child: Text(columnDto.name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold))),
          Image(
            image: AssetImage("assets/images/ic_share.png"),
            width: 28.0,
            height: 25.0,
          )
        ],
      ),
    );
  }
}

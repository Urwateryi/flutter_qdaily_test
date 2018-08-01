import 'package:flutter/material.dart';
import 'package:flutter_qdaily_test/model/ColumnDto.dart';
import 'package:transparent_image/transparent_image.dart';

class FeedsRowTabWidget extends StatefulWidget {
  final ColumnDto dto;

  FeedsRowTabWidget(this.dto);

  @override
  _FeedsRowTabWidgetState createState() => _FeedsRowTabWidgetState();
}

class _FeedsRowTabWidgetState extends State<FeedsRowTabWidget> {
  @override
  Widget build(BuildContext context) {
    ColumnDto columnDto = widget.dto;

    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Material(
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: columnDto.icon,
              fit: BoxFit.cover,
              width: 28.0,
              height: 28.0,
              fadeInDuration: Duration(milliseconds: 200),
              fadeOutDuration: Duration(milliseconds: 200),
            ),
            borderRadius: BorderRadius.circular(14.0),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Text(
              columnDto.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Image(
            image: AssetImage("assets/images/ic_add.png"),
            width: 20.0,
            height: 20.0,
          ),
          SizedBox(width: 15.0),
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

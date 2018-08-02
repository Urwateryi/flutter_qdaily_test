import 'package:flutter/material.dart';
import 'ColumnItem.dart';
import 'package:flutter_qdaily_test/model/FeedDto.dart';

class HorizontalColumnWidget extends StatefulWidget {
  final List<FeedDto> feedList;

  HorizontalColumnWidget(this.feedList);

  @override
  _HorizontalColumnWidgetState createState() => _HorizontalColumnWidgetState();
}

class _HorizontalColumnWidgetState extends State<HorizontalColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: ClampingScrollPhysics(),
      itemBuilder: (context, position) {
        return ColumnItem(widget.feedList[position]);
      },
      itemCount: widget.feedList.length,
    );
  }
}

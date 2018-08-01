import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_qdaily_test/model/FeedDto.dart';
import 'package:flutter_qdaily_test/model/PostDto.dart';
import 'package:flutter_qdaily_test/common/CommentFavorWidget.dart';

class ColumnItem extends StatefulWidget {
  final FeedDto dto;

  ColumnItem(this.dto);

  @override
  _ColumnItemState createState() => _ColumnItemState();
}

class _ColumnItemState extends State<ColumnItem> {
  @override
  Widget build(BuildContext context) {
    PostDto postDto = widget.dto.post;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.8,
          color: Colors.grey,
        ),
      ),
      child: Column(
        children: <Widget>[
          FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: postDto.image,
            height: 200.0,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 500),
            fadeOutDuration: Duration(milliseconds: 500),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  postDto.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    height: 1.2,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  postDto.description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13.0,
                    letterSpacing: 1.1,
                    height: 1.1,
                  ),
                ),
                SizedBox(height: 10.0),
                CommentFavorWidget(postDto),
              ],
            ),
            padding: EdgeInsets.all(10.0),
          )
        ],
      ),
    );
  }
}

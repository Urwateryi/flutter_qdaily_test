import 'package:flutter/material.dart';
import 'package:flutter_qdaily_test/model/PostDto.dart';

class CommentFavorWidget extends StatefulWidget {

  final PostDto dto;

  CommentFavorWidget(this.dto);

  @override
  _CommentFavorWidgetState createState() => _CommentFavorWidgetState();
}

class _CommentFavorWidgetState extends State<CommentFavorWidget> {
  @override
  Widget build(BuildContext context) {

    PostDto postDto=widget.dto;

    return Container(
      child: Row(
        children: <Widget>[
          Text(
            postDto.category.title,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
            ),
          ),
          SizedBox(width: 8.0),
          Row(
            children: <Widget>[
              Icon(
                Icons.comment,
                size: 13.0,
                color: Colors.grey,
              ),
              SizedBox(width: 5.0),
              Text(
                postDto.commentCount.toString(),
                style: TextStyle(color: Colors.grey, fontSize: 12.0),
              ),
            ],
          ),
          SizedBox(width: 8.0),
          Row(
            children: <Widget>[
              Icon(
                Icons.favorite_border,
                color: Colors.grey,
                size: 13.0,
              ),
              SizedBox(width: 5.0),
              Text(
                postDto.praiseCount.toString(),
                style: TextStyle(color: Colors.grey, fontSize: 12.0),
              ),
            ],
          ),
          SizedBox(width: 8.0),
          Text(
            "1个小时前",
            style: TextStyle(color: Colors.grey, fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}

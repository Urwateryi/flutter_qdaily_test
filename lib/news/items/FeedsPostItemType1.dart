import 'package:flutter/material.dart';
import 'package:flutter_qdaily_test/model/FeedDto.dart';
import 'package:flutter_qdaily_test/model/PostDto.dart';
import 'package:flutter_qdaily_test/common/CommentFavorWidget.dart';

class FeedsPostItemType1 extends StatefulWidget {
  final FeedDto dto;

  FeedsPostItemType1(this.dto);

  @override
  _FeedsPostItemType1State createState() => _FeedsPostItemType1State();
}

class _FeedsPostItemType1State extends State<FeedsPostItemType1> {
  @override
  Widget build(BuildContext context) {
    PostDto post = widget.dto.post;

    return Column(
      children: <Widget>[
        Container(
          height: 5.0,
          color: Colors.grey[100],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      post.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        height: 1.3,
                        letterSpacing: 1.3,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    CommentFavorWidget(post),
                  ],
                ),
              ),
            ),
            Image(
              image: NetworkImage(post.image),
              fit: BoxFit.cover,
              width: 150.0,
              height: 110.0,
            ),
          ],
        )
      ],
    );
  }
}

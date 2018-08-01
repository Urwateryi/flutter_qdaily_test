import 'package:flutter/material.dart';
import 'package:flutter_qdaily_test/model/FeedDto.dart';
import 'package:flutter_qdaily_test/model/PostDto.dart';
import 'package:flutter_qdaily_test/common/CommentFavorWidget.dart';
import 'package:transparent_image/transparent_image.dart';

class FeedsPostItemType2 extends StatefulWidget {
  final FeedDto dto;

  FeedsPostItemType2(this.dto);

  @override
  _FeedsPostItemType2State createState() => _FeedsPostItemType2State();
}

class _FeedsPostItemType2State extends State<FeedsPostItemType2> {
  @override
  Widget build(BuildContext context) {
    PostDto postDto = widget.dto.post;

    return Column(
      children: <Widget>[
        Container(
          height: 5.0,
          color: Colors.grey[100],
        ),
        Column(
          children: <Widget>[
            FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: postDto.image,
              width: 400.0,
              height: 200.0,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 1200),
              fadeOutDuration: const Duration(milliseconds: 1200),
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
            ),
          ],
        ),
      ],
    );
  }
}

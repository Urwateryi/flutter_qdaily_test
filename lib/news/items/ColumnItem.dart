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
    int showType = postDto.column.showType;

    return Container(
      width: 250.0,
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.8,
          color: Colors.grey[300],
        ),
      ),
      child: Column(
        children: <Widget>[
          (showType == 1)
              ? FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: postDto.image,
                  width: 250.0,
                  height: 130.0,
                  fit: BoxFit.cover,
                  fadeInDuration: Duration(milliseconds: 500),
                  fadeOutDuration: Duration(milliseconds: 500),
                )
              : FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: postDto.image,
                  width: 120.0,
                  height: 120.0,
                  fit: BoxFit.fill,
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
                    letterSpacing: 1.1,
                  ),
                ),
                (showType == 1) ? SizedBox(height: 5.0) : Container(),
                (showType == 1)
                    ? Text(
                        postDto.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.0,
                        ),
                      )
                    : Container(),
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

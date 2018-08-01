import 'package:flutter/material.dart';
import 'package:flutter_qdaily_test/model/FeedDto.dart';
import 'package:flutter_qdaily_test/model/PostDto.dart';
import 'package:flutter_qdaily_test/model/ColumnDto.dart';
import 'package:flutter_qdaily_test/model/CategoryDto.dart';

class FeedsPostItemType0 extends StatefulWidget {
  final FeedDto dto;

  FeedsPostItemType0(this.dto);

  @override
  _FeedsPostItemType0State createState() => _FeedsPostItemType0State();
}

class _FeedsPostItemType0State extends State<FeedsPostItemType0> {
  @override
  Widget build(BuildContext context) {
    PostDto postDto = widget.dto.post;

    CategoryDto categoryDto = postDto.category;
    ColumnDto columnDto = postDto.column;

    return Column(
      children: <Widget>[
        Container(
          height: 5.0,
          color: Colors.grey[100],
        ),
        Column(
          children: <Widget>[
            Container(
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
            ),
            Stack(
              fit: StackFit.passthrough,
              children: <Widget>[
                Image(
                    image: NetworkImage(postDto.image),
                    height: 200.0,
                    fit: BoxFit.cover),
                Positioned(
                  top: 15.0,
                  right: 15.0,
                  child: Image(
                    image: AssetImage("assets/images/ic_lab_new.png"),
                    width: 65.0,
                    height: 50.0,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 25.0,
                  left: 25.0,
                  child: Image(
                    image: NetworkImage(categoryDto.imageLab),
                    fit: BoxFit.fill,
                    width: 35.0,
                    height: 35.0,
                  ),
                ),
              ],
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
                  Row(
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
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12.0),
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
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12.0),
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
                ],
              ),
              padding: EdgeInsets.all(10.0),
            )
          ],
        ),
      ],
    );
  }
}

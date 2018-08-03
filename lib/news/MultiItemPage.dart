import 'package:flutter/material.dart';
import 'package:flutter_qdaily_test/model/BaseDto.dart';
import 'package:flutter_qdaily_test/model/FeedDto.dart';
import 'package:flutter_qdaily_test/model/BannerDto.dart';
import 'package:flutter_qdaily_test/datas/BannersData.dart';
import 'package:flutter_qdaily_test/datas/FeedsData.dart';
import 'items/FeedsPostItemType0.dart';
import 'items/FeedsPostItemType1.dart';
import 'items/FeedsPostItemType2.dart';
import 'package:transparent_image/transparent_image.dart';

List<BaseDto> items = new List<BaseDto>.generate(
    6, (i) => i == 0 ? (BannersData.bannerList[i]) : (FeedsData.feedsList[i]));

class MultiItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildListItems(),
    );
  }

  Widget buildListItems() {
    return new ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        if (item is BannerDto) {
          return FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: item.image,
            height: 200.0,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 100),
            fadeOutDuration: Duration(milliseconds: 100),
          );
        } else if (item is FeedDto) {
          if (item.type == 0) {
            return FeedsPostItemType0(item);
          } else if (item.type == 1) {
            return FeedsPostItemType1(item);
          } else {
            return FeedsPostItemType2(item);
          }
        }
      },
    );
  }
}
// 包含显示标题的数据的ListItem
class ChildOne implements BaseDto {
  final String image;
  final ChildTwo childTwo;

  ChildOne(this.image, this.childTwo);
}

// 包含显示主标题、副标题的ListItem
class ChildTwo implements BaseDto {
  final String title;

  ChildTwo(this.title);
}

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:transparent_image/transparent_image.dart';

import 'package:flutter_qdaily_test/datas/BannersData.dart';
import 'package:flutter_qdaily_test/datas/FeedsData.dart';
import 'package:flutter_qdaily_test/datas/FeedsAdData.dart';

import 'package:flutter_qdaily_test/model/BannerDto.dart';
import 'package:flutter_qdaily_test/model/FeedDto.dart';
import 'package:flutter_qdaily_test/model/FeedsAdDto.dart';
import 'package:flutter_qdaily_test/model/ColumnDto.dart';

import 'items/FeedsPostItemType1.dart';
import 'items/FeedsPostItemType0.dart';
import 'items/FeedsPostItemType2.dart';
import 'items/FeedsAdItem.dart';
import 'items/ColumnItem.dart';

class NewsPage extends StatelessWidget {
  final List<BannerDto> bannerList = BannersData.bannerList;
  final List<FeedsAdDto> adsList = FeedsAdData.adsList;
  final List<FeedDto> feedsList = FeedsData.feedsList;

  Widget banner(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          BannerDto dto = bannerList[index];
          return Stack(
            fit: StackFit.expand,
            children: <Widget>[
              FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: dto.image,
                fit: BoxFit.cover,
                fadeInDuration: Duration(milliseconds: 100),
                fadeOutDuration: Duration(milliseconds: 100),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0),
                  child: Text(
                    dto.post.title,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        height: 1.3,
                        letterSpacing: 1.3),
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: bannerList.length,
        pagination: SwiperPagination(builder: SwiperPagination.dots),
        //上一页下一页的指示器
        onTap: (index) {
          Fluttertoast.showToast(msg: "点击了第" + (index + 1).toString() + "个");
        },
        autoplay: true,
        loop: true,
        duration: 1000,
        onIndexChanged: (index) {},
      ),
    );
  }

  Widget feedsWidget() {
    //广告位
    var locations = [];
    if (adsList != null && adsList.length > 0) {
      for (int i = 0; i < adsList.length; i++) {
        FeedsAdDto feedsAdDto = adsList[i];
        int location = feedsAdDto.advertisementDto.adLocation + 1;
        locations.add(location);
      }
    }

    return Expanded(
      child: ListView.builder(
        itemCount: feedsList.length + 1,
        itemBuilder: (context, position) {
          //第一个位置放banner
          if (position == 0) {
            return banner(context);
          } else {
            //广告位插入
            if (locations.length > 0) {
              if (position == locations[0]) {
                return FeedsAdItem(adsList[position - 1]);
              }
            }

            //feeds列表
            FeedDto feedDto = feedsList[position - 1];
            if (feedDto.type == 0) {
              return FeedsPostItemType0(feedsList[position - 1]);
            } else if (feedDto.type == 1) {
              return FeedsPostItemType1(feedsList[position - 1]);
            } else if (feedDto.type == 2) {
              return FeedsPostItemType2(feedsList[position - 1]);
            }
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          feedsWidget(),
        ],
      ),
    );
  }
}

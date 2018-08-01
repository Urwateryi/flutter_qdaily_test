import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_qdaily_test/datas/BannersData.dart';
import 'package:flutter_qdaily_test/model/BannerDto.dart';
import 'package:flutter_qdaily_test/datas/FeedsData.dart';
import 'package:flutter_qdaily_test/model/FeedDto.dart';
import 'items/FeedsPostItemType1.dart';
import 'items/FeedsPostItemType0.dart';
import 'items/FeedsPostItemType2.dart';

class NewsPage extends StatelessWidget {
  final List<BannerDto> bannerList = BannersData.bannerList;
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
              Image(
                image: NetworkImage(dto.image),
                fit: BoxFit.cover,
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
    return Expanded(
      child: ListView.builder(
        itemCount: feedsList.length + 1,
        itemBuilder: (context, position) {
          if (position == 0) {
            return banner(context);
          } else {
            FeedDto feedDto = feedsList[position-1];
            if (feedDto.type == 0) {
              return FeedsPostItemType0(feedsList[position-1]);
            }else if(feedDto.type==1){
              return FeedsPostItemType1(feedsList[position - 1]);
            }else if(feedDto.type==2){
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

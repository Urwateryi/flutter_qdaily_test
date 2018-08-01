import 'package:flutter_qdaily_test/model/PostDto.dart';
import 'package:flutter_qdaily_test/model/CategoryDto.dart';
import 'package:flutter_qdaily_test/model/FeedsAdDto.dart';
import 'package:flutter_qdaily_test/model/AdvertisementDto.dart';
import 'package:flutter_qdaily_test/model/CoverDto.dart';

class FeedsAdData {
  static List<FeedsAdDto> adsList = <FeedsAdDto>[
    FeedsAdDto(
      "http://img.qdaily.com/article/long_show/20180727231609yUOfsdNDvzJGT2wE.gif?imageMogr2/auto-orient/thumbnail/!374x270r/gravity/Center/crop/374x270/quality/85/ignore-error/1",
      1,
      PostDto(
          55694,
          15,
          "闲话少说，《好奇心日报》又要招人了",
          "来吧。",
          1532705194,
          "http://img.qdaily.com/article/long_show/20180727231609yUOfsdNDvzJGT2wE.gif?imageMogr2/auto-orient/thumbnail/!374x270r/gravity/Center/crop/374x270/quality/85/ignore-error/1",
          1532705194,
          284,
          true,
          1163,
          null,
          0,
          58168,
          "http://app3.qdaily.com/app3/articles/55694.html",
          "",
          "article",
          CategoryDto(
              10,
              "广告",
              "http://img.qdaily.com/category/icon_black/20160606004534bwzlR4GUpmNHfXOS.png?imageMogr2/auto-orient/thumbnail/!128x128r/gravity/Center/crop/128x128/quality/85/ignore-error/1",
              "http://img.qdaily.com/category/icon_yellow_app/20160606004534U2okagDVY4mBRAC9.png?imageMogr2/auto-orient/thumbnail/!160x160r/gravity/Center/crop/160x160/quality/85/ignore-error/1",
              "",
              ""),
          null),
      AdvertisementDto("", "", 0, 1, "", 2, "", 1, "all", false),
      CoverDto(
          "http://img.qdaily.com/cover/cover/20160606004551ct8HAdqszRYBZkF6.png?imageMogr2/auto-orient/thumbnail/250x360/gravity/Center/crop/250x360/quality/85/ignore-error/1",
          "透明"),
    ),
//    FeedsAdDto(
//      "http://img.qdaily.com/article/long_show/20180731153424ogQpjNEcreiHa60O.jpg?imageMogr2/auto-orient/thumbnail/!374x270r/gravity/Center/crop/374x270/quality/85/format/jpg/ignore-error/1",
//      1,
//      PostDto(
//          55637,
//          15,
//          "这个夏天，什么样的旅行才最酷？",
//          "",
//          1533051000,
//          "http://img.qdaily.com/article/long_show/20180731153424ogQpjNEcreiHa60O.jpg?imageMogr2/auto-orient/thumbnail/!374x270r/gravity/Center/crop/374x270/quality/85/format/jpg/ignore-error/1",
//          1533051000,
//          2,
//          true,
//          6,
//          null,
//          0,
//          58110,
//          "http://app3.qdaily.com/app3/articles/55637.html",
//          "",
//          "article",
//          CategoryDto(
//              10,
//              "广告",
//              "http://img.qdaily.com/category/icon_black/20160606004534bwzlR4GUpmNHfXOS.png?imageMogr2/auto-orient/thumbnail/!128x128r/gravity/Center/crop/128x128/quality/85/ignore-error/1",
//              "http://img.qdaily.com/category/icon_yellow_app/20160606004534U2okagDVY4mBRAC9.png?imageMogr2/auto-orient/thumbnail/!160x160r/gravity/Center/crop/160x160/quality/85/ignore-error/1",
//              "",
//              ""),
//          null),
//      AdvertisementDto("", "", 4, 1, "", 2, "", 1, "all", false),
//      CoverDto(
//          "http://img.qdaily.com/cover/cover/20160606004551ct8HAdqszRYBZkF6.png?imageMogr2/auto-orient/thumbnail/250x360/gravity/Center/crop/250x360/quality/85/ignore-error/1",
//          "透明"),
//    ),
  ];
}

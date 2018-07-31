import 'ShareDto.dart';

class ColumnDto{
  int id;
  String name;
  String description;
  bool subscribeStatus;
  String icon;
  String image;
  String imageLarge;
  String contentProvider;
  int showType;
  int genre;
  int subscriberNum;
  int postCount;
  String sortTime;
  String columnTag;
  String location;
  ShareDto share;

  ColumnDto(this.id, this.name, this.description, this.subscribeStatus,
      this.icon, this.image, this.imageLarge, this.contentProvider,
      this.showType, this.genre, this.subscriberNum, this.postCount,
      this.sortTime, this.columnTag, this.location, this.share);
}
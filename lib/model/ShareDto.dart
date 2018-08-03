import 'BaseDto.dart';

class ShareDto implements BaseDto{
  String url;
  String title;
  String text;
  String image;

  ShareDto(this.url, this.title, this.text, this.image);
}
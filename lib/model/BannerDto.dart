import 'PostDto.dart';
import 'BaseDto.dart';

class BannerDto implements BaseDto{
  String image;
  int type;
  PostDto post;

  BannerDto(this.image, this.type, this.post);
}
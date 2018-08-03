import 'PostDto.dart';
import 'BaseDto.dart';

class FeedDto implements BaseDto{
  String image;
  int type;
  PostDto post;

  FeedDto(this.image, this.type, this.post);
}
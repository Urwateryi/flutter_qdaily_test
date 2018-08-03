import 'PostDto.dart';
import 'ListDto.dart';
import 'BaseDto.dart';

class HeadlineDto implements BaseDto{
  String image;
  int type;
  PostDto post;
  List<ListDto> list;
  int headlineGenre;

  HeadlineDto(this.image, this.type, this.post, this.list, this.headlineGenre);
}
import 'PostDto.dart';
import 'ListDto.dart';

class HeadlineDto{
  String image;
  int type;
  PostDto post;
  List<ListDto> list;
  int headlineGenre;

  HeadlineDto(this.image, this.type, this.post, this.list, this.headlineGenre);
}
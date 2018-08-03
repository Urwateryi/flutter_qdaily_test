import 'BaseDto.dart';

class CoverDto implements BaseDto{
  String image;
  String title;

  CoverDto(this.image, this.title);
}
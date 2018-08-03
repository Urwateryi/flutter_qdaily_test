import 'BaseDto.dart';

class ListDto implements BaseDto{
  String title;
  String description;
  String keywords;

  ListDto(this.title, this.description, this.keywords);


}
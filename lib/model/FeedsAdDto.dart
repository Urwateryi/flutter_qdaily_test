import 'PostDto.dart';
import 'AdvertisementDto.dart';
import 'CoverDto.dart';

class FeedsAdDto{
  String image;
  int type;
  PostDto post;
  AdvertisementDto advertisementDto;
  CoverDto coverDto;

  FeedsAdDto(this.image, this.type, this.post, this.advertisementDto,
      this.coverDto);
}
import 'PostDto.dart';
import 'AdvertisementDto.dart';
import 'CoverDto.dart';

class FeedsAd{
  String image;
  int type;
  PostDto post;
  AdvertisementDto advertisementDto;
  CoverDto coverDto;

  FeedsAd(this.image, this.type, this.post, this.advertisementDto,
      this.coverDto);
}
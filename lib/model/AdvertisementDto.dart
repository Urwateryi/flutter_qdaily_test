import 'BaseDto.dart';

class AdvertisementDto implements BaseDto{
  String feedbackUrl;
  String ownFeedbackUrl;
  int adLocation;
  int adType;
  String adUrl;
  int titleReveal;
  String adIconUrl;
  int wifiLocation;
  String appType;
  bool macroReplaceStatus;

  AdvertisementDto(this.feedbackUrl, this.ownFeedbackUrl, this.adLocation,
      this.adType, this.adUrl, this.titleReveal, this.adIconUrl,
      this.wifiLocation, this.appType, this.macroReplaceStatus);
}

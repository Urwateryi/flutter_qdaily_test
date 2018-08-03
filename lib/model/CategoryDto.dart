import 'BaseDto.dart';

class CategoryDto implements BaseDto{
  int id;
  String title;
  String normal;
  String normalHl;
  String imageLab;
  String imageExperiment;

  CategoryDto(this.id, this.title, this.normal, this.normalHl, this.imageLab,
      this.imageExperiment);
}
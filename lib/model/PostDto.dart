import 'CategoryDto.dart';
import 'ColumnDto.dart';

class PostDto{
    int id;
    int genre;
    String title;
    String description;
    int publishTime;
    String image;
    int startTime;
    int commentCount;
    bool commentStatus;
    int praiseCount;
    String superTag;
    int pageStyle;
    int postId;
    String appview;
    String filmLength;
    String datatype;
    CategoryDto category;
    ColumnDto column;

    PostDto(this.id, this.genre, this.title, this.description, this.publishTime,
        this.image, this.startTime, this.commentCount, this.commentStatus,
        this.praiseCount, this.superTag, this.pageStyle, this.postId,
        this.appview, this.filmLength, this.datatype, this.category,
        this.column);
}
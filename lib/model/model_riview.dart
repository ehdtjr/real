import 'package:json_annotation/json_annotation.dart';

part 'model_riview.g.dart';

@JsonSerializable()
class model_riview {

  final String http_status;
  final String loc_code;
  final String name;
  final int rating;
  final String regDate;
  final String content;
  final String imglink;



  model_riview(
      this.http_status,
      this.loc_code,
      this.name,
      this.rating,
      this.regDate,
      this.content,
      this.imglink,


      );

  factory model_riview.fromJson(Map<String, dynamic> json) => _$model_riviewFromJson(json);

  Map<String, dynamic> toJson() => _$model_riviewToJson(this);
}

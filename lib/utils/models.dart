import 'package:json_annotation/json_annotation.dart';
part 'models.g.dart';

@JsonSerializable()
class CautionIngredient {
  final String id;
  final String description;
  final String type;

  CautionIngredient({this.id = '', this.description = '', this.type = ''});

  factory CautionIngredient.fromJson(Map<String, dynamic> json) =>
      _$CautionIngredientFromJson(json);
  Map<String, dynamic> toJson() => _$CautionIngredientToJson(this);
}

@JsonSerializable()
class DangerIngredient {
  final String id;
  final String description;
  final String type;

  DangerIngredient({this.id = '', this.description = '', this.type = ''});

  factory DangerIngredient.fromJson(Map<String, dynamic> json) =>
      _$DangerIngredientFromJson(json);
  Map<String, dynamic> toJson() => _$DangerIngredientToJson(this);
}

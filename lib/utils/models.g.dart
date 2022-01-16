// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CautionIngredient _$CautionIngredientFromJson(Map<String, dynamic> json) =>
    CautionIngredient(
      id: json['id'] as String? ?? '',
      description: json['description'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$CautionIngredientToJson(CautionIngredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'type': instance.type,
    };

DangerIngredient _$DangerIngredientFromJson(Map<String, dynamic> json) =>
    DangerIngredient(
      id: json['id'] as String? ?? '',
      description: json['description'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$DangerIngredientToJson(DangerIngredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'type': instance.type,
    };

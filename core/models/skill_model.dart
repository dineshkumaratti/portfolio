// To parse this JSON data, do
//
//     final skillModel = skillModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../entities/skill_entity.dart';

part 'skill_model.freezed.dart';
part 'skill_model.g.dart';

SkillModel skillModelFromJson(String str) =>
    SkillModel.fromJson(json.decode(str));

String skillModelToJson(SkillModel data) => json.encode(data.toJson());

@freezed
class SkillModel with _$SkillModel implements SkillEntity {
  const factory SkillModel({
    List<String>? skill,
  }) = _SkillModel;

  factory SkillModel.fromJson(Map<String, dynamic> json) =>
      _$SkillModelFromJson(json);
}

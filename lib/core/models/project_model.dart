// To parse this JSON data, do
//
//     final projectModel = projectModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../entities/project_entity.dart';

part 'project_model.freezed.dart';
part 'project_model.g.dart';

ProjectModel projectModelFromJson(String str) =>
    ProjectModel.fromJson(json.decode(str));

String projectModelToJson(ProjectModel data) => json.encode(data.toJson());

@freezed
class ProjectModel with _$ProjectModel implements ProjectEntity {
  const factory ProjectModel({
    String? title,
    String? description,
    String? client,
    String? duration,
    String? techs,
    String? company,
  }) = _ProjectModel;

  factory ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectModelFromJson(json);
}

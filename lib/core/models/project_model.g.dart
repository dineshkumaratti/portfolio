// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectModelImpl _$$ProjectModelImplFromJson(Map<String, dynamic> json) =>
    _$ProjectModelImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      client: json['client'] as String?,
      duration: json['duration'] as String?,
      techs: json['techs'] as String?,
      company: json['company'] as String?,
    );

Map<String, dynamic> _$$ProjectModelImplToJson(_$ProjectModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'client': instance.client,
      'duration': instance.duration,
      'techs': instance.techs,
      'company': instance.company,
    };

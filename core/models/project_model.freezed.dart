// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectModel _$ProjectModelFromJson(Map<String, dynamic> json) {
  return _ProjectModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectModel {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get client => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  String? get techs => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectModelCopyWith<ProjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectModelCopyWith<$Res> {
  factory $ProjectModelCopyWith(
          ProjectModel value, $Res Function(ProjectModel) then) =
      _$ProjectModelCopyWithImpl<$Res, ProjectModel>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? client,
      String? duration,
      String? techs,
      String? company});
}

/// @nodoc
class _$ProjectModelCopyWithImpl<$Res, $Val extends ProjectModel>
    implements $ProjectModelCopyWith<$Res> {
  _$ProjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? client = freezed,
    Object? duration = freezed,
    Object? techs = freezed,
    Object? company = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      techs: freezed == techs
          ? _value.techs
          : techs // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectModelImplCopyWith<$Res>
    implements $ProjectModelCopyWith<$Res> {
  factory _$$ProjectModelImplCopyWith(
          _$ProjectModelImpl value, $Res Function(_$ProjectModelImpl) then) =
      __$$ProjectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? client,
      String? duration,
      String? techs,
      String? company});
}

/// @nodoc
class __$$ProjectModelImplCopyWithImpl<$Res>
    extends _$ProjectModelCopyWithImpl<$Res, _$ProjectModelImpl>
    implements _$$ProjectModelImplCopyWith<$Res> {
  __$$ProjectModelImplCopyWithImpl(
      _$ProjectModelImpl _value, $Res Function(_$ProjectModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? client = freezed,
    Object? duration = freezed,
    Object? techs = freezed,
    Object? company = freezed,
  }) {
    return _then(_$ProjectModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      techs: freezed == techs
          ? _value.techs
          : techs // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectModelImpl implements _ProjectModel {
  const _$ProjectModelImpl(
      {this.title,
      this.description,
      this.client,
      this.duration,
      this.techs,
      this.company});

  factory _$ProjectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectModelImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? client;
  @override
  final String? duration;
  @override
  final String? techs;
  @override
  final String? company;

  @override
  String toString() {
    return 'ProjectModel(title: $title, description: $description, client: $client, duration: $duration, techs: $techs, company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.techs, techs) || other.techs == techs) &&
            (identical(other.company, company) || other.company == company));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, description, client, duration, techs, company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectModelImplCopyWith<_$ProjectModelImpl> get copyWith =>
      __$$ProjectModelImplCopyWithImpl<_$ProjectModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectModel implements ProjectModel {
  const factory _ProjectModel(
      {final String? title,
      final String? description,
      final String? client,
      final String? duration,
      final String? techs,
      final String? company}) = _$ProjectModelImpl;

  factory _ProjectModel.fromJson(Map<String, dynamic> json) =
      _$ProjectModelImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get client;
  @override
  String? get duration;
  @override
  String? get techs;
  @override
  String? get company;
  @override
  @JsonKey(ignore: true)
  _$$ProjectModelImplCopyWith<_$ProjectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

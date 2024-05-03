// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppointmentType _$AppointmentTypeFromJson(Map<String, dynamic> json) {
  return _AppointmentType.fromJson(json);
}

/// @nodoc
mixin _$AppointmentType {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentTypeCopyWith<AppointmentType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentTypeCopyWith<$Res> {
  factory $AppointmentTypeCopyWith(
          AppointmentType value, $Res Function(AppointmentType) then) =
      _$AppointmentTypeCopyWithImpl<$Res, AppointmentType>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$AppointmentTypeCopyWithImpl<$Res, $Val extends AppointmentType>
    implements $AppointmentTypeCopyWith<$Res> {
  _$AppointmentTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppointmentTypeImplCopyWith<$Res>
    implements $AppointmentTypeCopyWith<$Res> {
  factory _$$AppointmentTypeImplCopyWith(_$AppointmentTypeImpl value,
          $Res Function(_$AppointmentTypeImpl) then) =
      __$$AppointmentTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$AppointmentTypeImplCopyWithImpl<$Res>
    extends _$AppointmentTypeCopyWithImpl<$Res, _$AppointmentTypeImpl>
    implements _$$AppointmentTypeImplCopyWith<$Res> {
  __$$AppointmentTypeImplCopyWithImpl(
      _$AppointmentTypeImpl _value, $Res Function(_$AppointmentTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$AppointmentTypeImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentTypeImpl implements _AppointmentType {
  const _$AppointmentTypeImpl({required this.title, required this.description});

  factory _$AppointmentTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentTypeImplFromJson(json);

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'AppointmentType(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentTypeImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentTypeImplCopyWith<_$AppointmentTypeImpl> get copyWith =>
      __$$AppointmentTypeImplCopyWithImpl<_$AppointmentTypeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentTypeImplToJson(
      this,
    );
  }
}

abstract class _AppointmentType implements AppointmentType {
  const factory _AppointmentType(
      {required final String title,
      required final String description}) = _$AppointmentTypeImpl;

  factory _AppointmentType.fromJson(Map<String, dynamic> json) =
      _$AppointmentTypeImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$AppointmentTypeImplCopyWith<_$AppointmentTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

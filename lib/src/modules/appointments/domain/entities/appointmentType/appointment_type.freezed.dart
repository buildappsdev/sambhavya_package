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
  bool get isOnline => throw _privateConstructorUsedError;

  /// Serializes this AppointmentType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentTypeCopyWith<AppointmentType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentTypeCopyWith<$Res> {
  factory $AppointmentTypeCopyWith(
          AppointmentType value, $Res Function(AppointmentType) then) =
      _$AppointmentTypeCopyWithImpl<$Res, AppointmentType>;
  @useResult
  $Res call({String title, String description, bool isOnline});
}

/// @nodoc
class _$AppointmentTypeCopyWithImpl<$Res, $Val extends AppointmentType>
    implements $AppointmentTypeCopyWith<$Res> {
  _$AppointmentTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? isOnline = null,
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
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({String title, String description, bool isOnline});
}

/// @nodoc
class __$$AppointmentTypeImplCopyWithImpl<$Res>
    extends _$AppointmentTypeCopyWithImpl<$Res, _$AppointmentTypeImpl>
    implements _$$AppointmentTypeImplCopyWith<$Res> {
  __$$AppointmentTypeImplCopyWithImpl(
      _$AppointmentTypeImpl _value, $Res Function(_$AppointmentTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? isOnline = null,
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
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentTypeImpl implements _AppointmentType {
  const _$AppointmentTypeImpl(
      {required this.title, required this.description, required this.isOnline});

  factory _$AppointmentTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentTypeImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final bool isOnline;

  @override
  String toString() {
    return 'AppointmentType(title: $title, description: $description, isOnline: $isOnline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentTypeImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, isOnline);

  /// Create a copy of AppointmentType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      required final String description,
      required final bool isOnline}) = _$AppointmentTypeImpl;

  factory _AppointmentType.fromJson(Map<String, dynamic> json) =
      _$AppointmentTypeImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  bool get isOnline;

  /// Create a copy of AppointmentType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentTypeImplCopyWith<_$AppointmentTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_locations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppointmentLocation _$AppointmentLocationFromJson(Map<String, dynamic> json) {
  return _AppointmentLocation.fromJson(json);
}

/// @nodoc
mixin _$AppointmentLocation {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String? get googleMapsLink => throw _privateConstructorUsedError;

  /// Serializes this AppointmentLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentLocationCopyWith<AppointmentLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentLocationCopyWith<$Res> {
  factory $AppointmentLocationCopyWith(
          AppointmentLocation value, $Res Function(AppointmentLocation) then) =
      _$AppointmentLocationCopyWithImpl<$Res, AppointmentLocation>;
  @useResult
  $Res call({String id, String title, String address, String? googleMapsLink});
}

/// @nodoc
class _$AppointmentLocationCopyWithImpl<$Res, $Val extends AppointmentLocation>
    implements $AppointmentLocationCopyWith<$Res> {
  _$AppointmentLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? address = null,
    Object? googleMapsLink = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      googleMapsLink: freezed == googleMapsLink
          ? _value.googleMapsLink
          : googleMapsLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppointmentLocationImplCopyWith<$Res>
    implements $AppointmentLocationCopyWith<$Res> {
  factory _$$AppointmentLocationImplCopyWith(_$AppointmentLocationImpl value,
          $Res Function(_$AppointmentLocationImpl) then) =
      __$$AppointmentLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String address, String? googleMapsLink});
}

/// @nodoc
class __$$AppointmentLocationImplCopyWithImpl<$Res>
    extends _$AppointmentLocationCopyWithImpl<$Res, _$AppointmentLocationImpl>
    implements _$$AppointmentLocationImplCopyWith<$Res> {
  __$$AppointmentLocationImplCopyWithImpl(_$AppointmentLocationImpl _value,
      $Res Function(_$AppointmentLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? address = null,
    Object? googleMapsLink = freezed,
  }) {
    return _then(_$AppointmentLocationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      googleMapsLink: freezed == googleMapsLink
          ? _value.googleMapsLink
          : googleMapsLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentLocationImpl implements _AppointmentLocation {
  const _$AppointmentLocationImpl(
      {required this.id,
      required this.title,
      required this.address,
      this.googleMapsLink});

  factory _$AppointmentLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentLocationImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String address;
  @override
  final String? googleMapsLink;

  @override
  String toString() {
    return 'AppointmentLocation(id: $id, title: $title, address: $address, googleMapsLink: $googleMapsLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentLocationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.googleMapsLink, googleMapsLink) ||
                other.googleMapsLink == googleMapsLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, address, googleMapsLink);

  /// Create a copy of AppointmentLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentLocationImplCopyWith<_$AppointmentLocationImpl> get copyWith =>
      __$$AppointmentLocationImplCopyWithImpl<_$AppointmentLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentLocationImplToJson(
      this,
    );
  }
}

abstract class _AppointmentLocation implements AppointmentLocation {
  const factory _AppointmentLocation(
      {required final String id,
      required final String title,
      required final String address,
      final String? googleMapsLink}) = _$AppointmentLocationImpl;

  factory _AppointmentLocation.fromJson(Map<String, dynamic> json) =
      _$AppointmentLocationImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get address;
  @override
  String? get googleMapsLink;

  /// Create a copy of AppointmentLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentLocationImplCopyWith<_$AppointmentLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

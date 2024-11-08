// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return _Appointment.fromJson(json);
}

/// @nodoc
mixin _$Appointment {
  String get id => throw _privateConstructorUsedError;
  @AppointmentTypeConverter()
  AppointmentType get type => throw _privateConstructorUsedError;
  AppointmentStatus get appointmentStatus => throw _privateConstructorUsedError;
  String? get locationId => throw _privateConstructorUsedError;
  String get counsellorId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  String get additionalInfo => throw _privateConstructorUsedError;
  String? get meetingLink => throw _privateConstructorUsedError;

  /// Serializes this Appointment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentCopyWith<Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) then) =
      _$AppointmentCopyWithImpl<$Res, Appointment>;
  @useResult
  $Res call(
      {String id,
      @AppointmentTypeConverter() AppointmentType type,
      AppointmentStatus appointmentStatus,
      String? locationId,
      String counsellorId,
      String userId,
      DateTime dateTime,
      String additionalInfo,
      String? meetingLink});

  $AppointmentTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res, $Val extends Appointment>
    implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? appointmentStatus = null,
    Object? locationId = freezed,
    Object? counsellorId = null,
    Object? userId = null,
    Object? dateTime = null,
    Object? additionalInfo = null,
    Object? meetingLink = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AppointmentType,
      appointmentStatus: null == appointmentStatus
          ? _value.appointmentStatus
          : appointmentStatus // ignore: cast_nullable_to_non_nullable
              as AppointmentStatus,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      counsellorId: null == counsellorId
          ? _value.counsellorId
          : counsellorId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      additionalInfo: null == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String,
      meetingLink: freezed == meetingLink
          ? _value.meetingLink
          : meetingLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentTypeCopyWith<$Res> get type {
    return $AppointmentTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentImplCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$$AppointmentImplCopyWith(
          _$AppointmentImpl value, $Res Function(_$AppointmentImpl) then) =
      __$$AppointmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @AppointmentTypeConverter() AppointmentType type,
      AppointmentStatus appointmentStatus,
      String? locationId,
      String counsellorId,
      String userId,
      DateTime dateTime,
      String additionalInfo,
      String? meetingLink});

  @override
  $AppointmentTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$AppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentCopyWithImpl<$Res, _$AppointmentImpl>
    implements _$$AppointmentImplCopyWith<$Res> {
  __$$AppointmentImplCopyWithImpl(
      _$AppointmentImpl _value, $Res Function(_$AppointmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? appointmentStatus = null,
    Object? locationId = freezed,
    Object? counsellorId = null,
    Object? userId = null,
    Object? dateTime = null,
    Object? additionalInfo = null,
    Object? meetingLink = freezed,
  }) {
    return _then(_$AppointmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AppointmentType,
      appointmentStatus: null == appointmentStatus
          ? _value.appointmentStatus
          : appointmentStatus // ignore: cast_nullable_to_non_nullable
              as AppointmentStatus,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      counsellorId: null == counsellorId
          ? _value.counsellorId
          : counsellorId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      additionalInfo: null == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String,
      meetingLink: freezed == meetingLink
          ? _value.meetingLink
          : meetingLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentImpl implements _Appointment {
  const _$AppointmentImpl(
      {required this.id,
      @AppointmentTypeConverter() required this.type,
      required this.appointmentStatus,
      required this.locationId,
      required this.counsellorId,
      required this.userId,
      required this.dateTime,
      required this.additionalInfo,
      this.meetingLink});

  factory _$AppointmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentImplFromJson(json);

  @override
  final String id;
  @override
  @AppointmentTypeConverter()
  final AppointmentType type;
  @override
  final AppointmentStatus appointmentStatus;
  @override
  final String? locationId;
  @override
  final String counsellorId;
  @override
  final String userId;
  @override
  final DateTime dateTime;
  @override
  final String additionalInfo;
  @override
  final String? meetingLink;

  @override
  String toString() {
    return 'Appointment(id: $id, type: $type, appointmentStatus: $appointmentStatus, locationId: $locationId, counsellorId: $counsellorId, userId: $userId, dateTime: $dateTime, additionalInfo: $additionalInfo, meetingLink: $meetingLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.appointmentStatus, appointmentStatus) ||
                other.appointmentStatus == appointmentStatus) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.counsellorId, counsellorId) ||
                other.counsellorId == counsellorId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo) &&
            (identical(other.meetingLink, meetingLink) ||
                other.meetingLink == meetingLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, appointmentStatus,
      locationId, counsellorId, userId, dateTime, additionalInfo, meetingLink);

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      __$$AppointmentImplCopyWithImpl<_$AppointmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentImplToJson(
      this,
    );
  }
}

abstract class _Appointment implements Appointment {
  const factory _Appointment(
      {required final String id,
      @AppointmentTypeConverter() required final AppointmentType type,
      required final AppointmentStatus appointmentStatus,
      required final String? locationId,
      required final String counsellorId,
      required final String userId,
      required final DateTime dateTime,
      required final String additionalInfo,
      final String? meetingLink}) = _$AppointmentImpl;

  factory _Appointment.fromJson(Map<String, dynamic> json) =
      _$AppointmentImpl.fromJson;

  @override
  String get id;
  @override
  @AppointmentTypeConverter()
  AppointmentType get type;
  @override
  AppointmentStatus get appointmentStatus;
  @override
  String? get locationId;
  @override
  String get counsellorId;
  @override
  String get userId;
  @override
  DateTime get dateTime;
  @override
  String get additionalInfo;
  @override
  String? get meetingLink;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

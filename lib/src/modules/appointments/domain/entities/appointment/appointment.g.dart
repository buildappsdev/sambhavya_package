// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentImpl _$$AppointmentImplFromJson(Map<String, dynamic> json) =>
    _$AppointmentImpl(
      id: json['id'] as String,
      type: const AppointmentTypeConverter()
          .fromJson(json['type'] as Map<String, dynamic>),
      appointmentStatus:
          $enumDecode(_$AppointmentStatusEnumMap, json['appointmentStatus']),
      locationId: json['locationId'] as String?,
      counsellorId: json['counsellorId'] as String,
      userId: json['userId'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      additionalInfo: json['additionalInfo'] as String,
      meetingLink: json['meetingLink'] as String?,
    );

Map<String, dynamic> _$$AppointmentImplToJson(_$AppointmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': const AppointmentTypeConverter().toJson(instance.type),
      'appointmentStatus':
          _$AppointmentStatusEnumMap[instance.appointmentStatus]!,
      'locationId': instance.locationId,
      'counsellorId': instance.counsellorId,
      'userId': instance.userId,
      'dateTime': instance.dateTime.toIso8601String(),
      'additionalInfo': instance.additionalInfo,
      'meetingLink': instance.meetingLink,
    };

const _$AppointmentStatusEnumMap = {
  AppointmentStatus.booked: 'booked',
  AppointmentStatus.confirmed: 'confirmed',
  AppointmentStatus.cancelled: 'cancelled',
};

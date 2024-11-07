// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentImpl _$$AppointmentImplFromJson(Map<String, dynamic> json) =>
    _$AppointmentImpl(
      id: json['id'] as String,
      appointmentStatus: json['appointmentStatus'] as String,
      appointmentType: json['appointmentType'] as String,
      appointmentLocationId: json['appointmentLocationId'] as String?,
      counsellorId: json['counsellorId'] as String,
      userId: json['userId'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      additionalInfo: json['additionalInfo'] as String,
      meetingLink: json['meetingLink'] as String?,
    );

Map<String, dynamic> _$$AppointmentImplToJson(_$AppointmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appointmentStatus': instance.appointmentStatus,
      'appointmentType': instance.appointmentType,
      'appointmentLocationId': instance.appointmentLocationId,
      'counsellorId': instance.counsellorId,
      'userId': instance.userId,
      'dateTime': instance.dateTime.toIso8601String(),
      'additionalInfo': instance.additionalInfo,
      'meetingLink': instance.meetingLink,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentImpl _$$AppointmentImplFromJson(Map<String, dynamic> json) =>
    _$AppointmentImpl(
      appointmentType: json['appointmentType'] as String,
      counsellorId: json['counsellorId'] as String,
      userId: json['userId'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      additionalInfo: json['additionalInfo'] as String,
    );

Map<String, dynamic> _$$AppointmentImplToJson(_$AppointmentImpl instance) =>
    <String, dynamic>{
      'appointmentType': instance.appointmentType,
      'counsellorId': instance.counsellorId,
      'userId': instance.userId,
      'dateTime': instance.dateTime.toIso8601String(),
      'additionalInfo': instance.additionalInfo,
    };

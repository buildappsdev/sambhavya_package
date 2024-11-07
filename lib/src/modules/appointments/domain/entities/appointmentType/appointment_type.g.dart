// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentTypeImpl _$$AppointmentTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$AppointmentTypeImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      isOnline: json['isOnline'] as bool,
    );

Map<String, dynamic> _$$AppointmentTypeImplToJson(
        _$AppointmentTypeImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'isOnline': instance.isOnline,
    };

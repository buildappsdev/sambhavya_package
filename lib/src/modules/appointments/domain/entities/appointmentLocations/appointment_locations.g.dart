// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_locations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentLocationImpl _$$AppointmentLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$AppointmentLocationImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      address: json['address'] as String,
      googleMapsLink: json['googleMapsLink'] as String?,
    );

Map<String, dynamic> _$$AppointmentLocationImplToJson(
        _$AppointmentLocationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'address': instance.address,
      'googleMapsLink': instance.googleMapsLink,
    };

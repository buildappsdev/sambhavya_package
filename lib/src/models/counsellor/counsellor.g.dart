// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counsellor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CounsellorImpl _$$CounsellorImplFromJson(Map<String, dynamic> json) =>
    _$CounsellorImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      degree: json['degree'] as String,
      title: json['title'] as String,
      phone: json['phone'] as String,
      speciality: json['speciality'] as String,
      yrsOfExperience: (json['yrsOfExperience'] as num).toInt(),
      gender: json['gender'] as String,
      workingDays: (json['workingDays'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$CounsellorImplToJson(_$CounsellorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'degree': instance.degree,
      'title': instance.title,
      'phone': instance.phone,
      'speciality': instance.speciality,
      'yrsOfExperience': instance.yrsOfExperience,
      'gender': instance.gender,
      'workingDays': instance.workingDays,
    };

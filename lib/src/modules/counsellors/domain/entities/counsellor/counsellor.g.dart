// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counsellor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CounsellorImpl _$$CounsellorImplFromJson(Map<String, dynamic> json) =>
    _$CounsellorImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      gender: json['gender'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      imageUrl: json['imageUrl'] as String?,
      title: json['title'] as String,
      degree: json['degree'] as String,
      speciality: json['speciality'] as String,
      yrsOfExperience: (json['yrsOfExperience'] as num).toInt(),
      workingDays: (json['workingDays'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      workingHours: (json['workingHours'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$CounsellorImplToJson(_$CounsellorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'email': instance.email,
      'phone': instance.phone,
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'degree': instance.degree,
      'speciality': instance.speciality,
      'yrsOfExperience': instance.yrsOfExperience,
      'workingDays': instance.workingDays,
      'workingHours': instance.workingHours,
    };

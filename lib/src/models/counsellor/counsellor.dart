import 'package:freezed_annotation/freezed_annotation.dart';

part 'counsellor.freezed.dart';
part 'counsellor.g.dart';

@freezed
abstract class Counsellor with _$Counsellor {
  const factory Counsellor({
    required String id,
    
    required String name,
    required String gender,
    required String email,
    required String phone,

    String? imageUrl,

    required String title,
    required String degree,
    required String speciality,
    required int yrsOfExperience,

    required List<String> workingDays,
    required List<String> workingHours,
  }) = _Counsellor;

  factory Counsellor.fromJson(Map<String, dynamic> json) =>
      _$CounsellorFromJson(json);
}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counsellor.freezed.dart';
part 'counsellor.g.dart';

@freezed
abstract class Counsellor with _$Counsellor {
  const factory Counsellor({
    required String id,
    required String name,
    required String email,
    required String degree,
    required String title,
    required String phone,
    required String speciality,
    required int yrsOfExperience,
    required String gender,
    required List<String> workingDays,
  }) = _Counsellor;

  factory Counsellor.fromJson(Map<String, dynamic> json) =>
      _$CounsellorFromJson(json);
}

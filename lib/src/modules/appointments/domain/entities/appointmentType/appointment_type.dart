import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_type.freezed.dart';
part 'appointment_type.g.dart';

@freezed
class AppointmentType with _$AppointmentType {
  const factory AppointmentType({
    required String title,
    required String description,
    required bool isOnline,
  }) = _AppointmentType;

  factory AppointmentType.fromJson(Map<String, dynamic> json) =>
      _$AppointmentTypeFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';


part 'appointment.freezed.dart';
part 'appointment.g.dart';

@freezed
class Appointment with _$Appointment {
  const factory Appointment({
    required String appointmentType,
    required String counsellorId,
    required String userId,
    required DateTime dateTime,
    required String additionalInfo,
  }) = _Appointment;

  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);
}

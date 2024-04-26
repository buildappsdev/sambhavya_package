import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sambhavya_package/src/models/appointmentType/appointment_type.dart';


part 'appointment.freezed.dart';
part 'appointment.g.dart';

@freezed
class Appointment with _$Appointment {
  const factory Appointment({
    required AppointmentType appointmentType,
    required String counsellorId,
    required DateTime dateTime,
    required String additionalInfo,
  }) = _Appointment;

  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);
}

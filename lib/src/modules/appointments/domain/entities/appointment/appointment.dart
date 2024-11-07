import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sambhavya_package/src/modules/appointments/domain/entities/appointmentStatus/appointment_status.dart';
import 'package:sambhavya_package/src/modules/appointments/domain/entities/appointmentType/appointment_type.dart';

part 'appointment.freezed.dart';
part 'appointment.g.dart';

@freezed
class Appointment with _$Appointment {
  const factory Appointment({
    required String id,
    @AppointmentTypeConverter() required AppointmentType type,
    required AppointmentStatus appointmentStatus,
    required String? locationId,
    required String counsellorId,
    required String userId,
    required DateTime dateTime,
    required String additionalInfo,
    String? meetingLink,
  }) = _Appointment;

  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);
}

class AppointmentTypeConverter
    implements JsonConverter<AppointmentType, Map<String, dynamic>> {
  const AppointmentTypeConverter();

  @override
  AppointmentType fromJson(Map<String, dynamic> json) {
    return AppointmentType.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(AppointmentType type) {
    return type.toJson();
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_locations.freezed.dart';
part 'appointment_locations.g.dart';

@freezed
class AppointmentLocation with _$AppointmentLocation {
  const factory AppointmentLocation({
    required String title,
    required String address,
    String? googleMapsLink,
  }) = _AppointmentLocation;

  factory AppointmentLocation.fromJson(Map<String, dynamic> json) => _$AppointmentLocationFromJson(json);
}
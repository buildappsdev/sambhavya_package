import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sambhavya_package/sambhavya_package.dart';

final counsellorsAppointmentsProvider =
    FutureProvider.family<List<Appointment>, String>((
  ref,
  counsellorId,
) async {
  return ref
      .read(appointmentsDatabaseProvider)
      .getCounsellorsAppointments(counsellorId: counsellorId);
});

final counsellorsWeekAppointmentsProvider =
    FutureProvider.family<List<Appointment>, String>((
  ref,
  counsellorId,
) async {
  return ref
      .read(appointmentsDatabaseProvider)
      .getCounsellorsAppointments(counsellorId: counsellorId, days: 7);
});

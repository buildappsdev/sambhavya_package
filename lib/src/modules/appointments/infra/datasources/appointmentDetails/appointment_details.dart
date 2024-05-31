import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sambhavya_package/sambhavya_package.dart';

final appointmentDetailsProvider = FutureProvider.family<Appointment, String>((
  ref,
  appointmentId,
) async {
  final appointments = (ref
      .read(appointmentsDatabaseProvider)
      .getAppointmentById(appointmentId: appointmentId));

  return appointments;
});

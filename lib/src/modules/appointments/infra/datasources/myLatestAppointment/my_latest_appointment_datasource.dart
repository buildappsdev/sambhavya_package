import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sambhavya_package/sambhavya_package.dart';

final myLatestAppointmentProvider = FutureProvider.family<Appointment?, String>((
  ref,
  userId,
) async {
  final appointments = (ref
      .read(appointmentsDatabaseProvider)
      .getMyAppointments(userId: userId, limit: 1));

  return appointments.then((value) => value.isNotEmpty ? value.first : null);
});

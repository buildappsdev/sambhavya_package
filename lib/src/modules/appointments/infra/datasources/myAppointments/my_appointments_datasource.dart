import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sambhavya_package/sambhavya_package.dart';

final myAppointmentsProvider =
    FutureProvider.family<List<Appointment>, String>((
  ref,
  userId,
) async {
  return ref
      .read(appointmentsDatabaseProvider)
      .getMyAppointments(userId: userId);
});

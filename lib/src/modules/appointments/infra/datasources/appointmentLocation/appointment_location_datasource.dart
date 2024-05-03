import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:sambhavya_package/sambhavya_package.dart';
import 'package:sambhavya_package/src/modules/appointments/infra/repositories/appointmentSettings/appointment_settings_repository.dart';

final appointmentLocationsProvider =
    FutureProvider<List<AppointmentLocation>>((ref) async {
  return ref.read(appointmentSettingsProvider).getAppointmentLocations();
});

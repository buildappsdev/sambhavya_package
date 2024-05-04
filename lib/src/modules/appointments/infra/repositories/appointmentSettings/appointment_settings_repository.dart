import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:sambhavya_package/sambhavya_package.dart';
import 'package:sambhavya_package/src/modules/firebase/firestore/infra/repositories/firestore_repository.dart';

final appointmentSettingsProvider =
    Provider((ref) => _AppointmentSettingsController(ref));

class _AppointmentSettingsController {
  final Ref _ref;

  _AppointmentSettingsController(this._ref);

  final firestore = FirebaseFirestore.instance;

  static const String appointmentSettingsCollection =
      'admin/appointment_preferences';

  Future<List<AppointmentLocation>> getAppointmentLocations() async {
    final locationsSnapshot = await _ref
        .read(firestoreProvider)
        .getDocumentsFromCollection('$appointmentSettingsCollection/locations');

    return locationsSnapshot.docs
        .map((doc) => AppointmentLocation.fromJson(doc.data()))
        .toList();
  }
}

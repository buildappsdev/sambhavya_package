import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:sambhavya_package/sambhavya_package.dart';
import 'package:sambhavya_package/src/modules/firebase/firestore/infra/repositories/firestore_repository.dart';

final appointmentsDatabaseProvider =
    Provider((ref) => _AppointmentsDatabaseController(ref));

class _AppointmentsDatabaseController {
  final Ref _ref;

  _AppointmentsDatabaseController(this._ref);

  final firestore = FirebaseFirestore.instance;

  static const String appointmentsCollection = 'appointments';

  Future<void> createAppointment(Appointment appointment) async {
    final data = appointment.toJson();

    await _ref.read(firestoreProvider).addDocumentToCollection(
          appointmentsCollection,
          appointment.id,
          data,
        );

    await _ref.read(firestoreProvider).addDocumentToCollection(
          'users/${appointment.userId}/appointments',
          appointment.id,
          data,
        );
  }
}

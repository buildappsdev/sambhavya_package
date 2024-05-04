import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sambhavya_package/src/modules/appointments/infra/datasources/counsellorAppointment/counsellor_appointment_datasource.dart';
import 'package:sambhavya_package/src/modules/counsellors/domain/entities/counsellor/counsellor.dart';
import 'package:sambhavya_package/src/modules/firebase/firestore/infra/repositories/firestore_repository.dart';

final counsellorDatabaseProvider =
    Provider((ref) => _CounsellorDatabaseController(ref));

class _CounsellorDatabaseController {
  final Ref _ref;

  _CounsellorDatabaseController(this._ref);

  final firestore = FirebaseFirestore.instance;

  static const String counsellorCollection = 'counsellors';

  Future<List<Counsellor>> getCounsellors() async {
    final counsellorsSnapshot = await _ref
        .read(firestoreProvider)
        .getAllDocumentsFromCollection(counsellorCollection);

    return counsellorsSnapshot.docs
        .map((doc) => Counsellor.fromJson(doc.data()))
        .toList();
  }

  Future<Map<int, List<int>>> getCounsellorAvailability(
      Counsellor counsellor) async {
    final availableDays = counsellor.workingDays;
    final availableHours = counsellor.workingHours;

    final availability = <int, List<int>>{};

    for (var day in availableDays) {
      availability[day] = availableHours;
    }

    _ref
        .read(counsellorsAppointmentsProvider(counsellor.id))
        .whenData((appointments) {
      for (var appointment in appointments) {
        final appointmentDay = appointment.dateTime.weekday;
        final appointmentHour = appointment.dateTime.hour;

        if (availability.containsKey(appointmentDay)) {
          availability[appointmentDay]!.remove(appointmentHour);
        }
      }
    });

    availability.removeWhere((key, value) => value.isEmpty);

    return availability;
  }
}

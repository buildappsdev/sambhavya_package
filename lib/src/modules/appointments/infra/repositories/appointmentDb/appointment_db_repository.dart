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
    await _ref.read(firestoreProvider).addDocumentToCollection(
          appointmentsCollection,
          appointment.id,
          appointment.toJson(),
        );
  }

  Future<Appointment> getAppointmentById(
      {required String appointmentId}) async {
    final appointmentsSnapshot =
        await _ref.read(firestoreProvider).getDocumentsFromCollectionWithQuery(
              collection: 'appointments',
              query: FirebaseQuery(
                field: 'id',
                value: appointmentId,
              ),
              limit: 1,
            );
    return appointmentsSnapshot.docs
        .map((appointment) => Appointment.fromJson(appointment.data()))
        .toList()
        .first;
  }

  Future<List<Appointment>> getMyAppointments(
      {required userId, int? limit}) async {
    final appointmentsSnapshot =
        await _ref.read(firestoreProvider).getDocumentsFromCollectionWithQuery(
              collection: 'appointments',
              query: FirebaseQuery(
                field: 'userId',
                value: userId,
              ),
              orderByField: 'dateTime',
              descending: true,
              limit: limit,
            );

    return appointmentsSnapshot.docs
        .map((appointment) => Appointment.fromJson(appointment.data()))
        .toList();
  }

  Future<List<Appointment>> getCounsellorsAppointments(
      {required String counsellorId, int? days}) async {
    final appointmentsSnapshot =
        await _ref.read(firestoreProvider).getDocumentsFromCollectionWithQuery(
              collection: 'appointments',
              query: FirebaseQuery(
                field: 'counsellorId',
                value: counsellorId,
              ),
            );

    return appointmentsSnapshot.docs
        .map((appointment) => Appointment.fromJson(appointment.data()))
        .toList();
  }

//TODO Hardcoded Replace Later
  Future<List<Appointment>> getCounsellorsWeekAppointments(
      {required String counsellorId, int? days}) async {
    final appointmentsSnapshot = await _ref
        .read(firestoreProvider)
        .getDocumentsFromCollectionWithQuery7Days(
          collection: 'appointments',
          query: FirebaseQuery(
            field: 'counsellorId',
            value: counsellorId,
          ),
        );

    return appointmentsSnapshot.docs
        .map((appointment) => Appointment.fromJson(appointment.data()))
        .toList();
  }
}

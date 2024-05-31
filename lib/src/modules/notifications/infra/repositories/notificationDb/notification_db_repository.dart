import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sambhavya_package/src/modules/firebase/firestore/infra/repositories/firestore_repository.dart';

import '../../../domain/entities/notification/notification.dart';

final notificationsDatabaseProvider =
    Provider((ref) => _AppointmentsDatabaseController(ref));

class _AppointmentsDatabaseController {
  final Ref _ref;

  _AppointmentsDatabaseController(this._ref);

  final firestore = FirebaseFirestore.instance;

  Future<void> createNotification(Notification notification) async {
    await _ref.read(firestoreProvider).addDocumentToCollection(
          'users/${notification.user}/notifications',
          notification.id,
          notification.toJson(),
        );
  }

  Future<List<Notification>> getMyNotifications(
      {required userId, int? limit}) async {
    final notificationsSnapshot =
        await _ref.read(firestoreProvider).getAllDocumentsFromCollection(
              'users/$userId/notifications',
            );

    return notificationsSnapshot.docs
        .map((appointment) => Notification.fromJson(appointment.data()))
        .toList();
  }
}

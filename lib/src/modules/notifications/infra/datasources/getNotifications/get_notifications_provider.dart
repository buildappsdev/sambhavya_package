import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sambhavya_package/src/modules/notifications/infra/repositories/notificationDb/notification_db_repository.dart';

import '../../../domain/entities/notification/notification.dart';

final getNotificationsProvider = FutureProvider.family<List<Notification>, String>((
  ref,
  userId,
) async {
  final notifications = (ref
      .read(notificationsDatabaseProvider)
      .getMyNotifications(userId: userId));

  return notifications;
});

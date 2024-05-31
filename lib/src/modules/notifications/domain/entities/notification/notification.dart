import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sambhavya_package/src/modules/notifications/domain/entities/notificationType/notification_type.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class AppNotification with _$AppNotification {
  const factory AppNotification({
    required String id,
    required NotificationType type,
    required String title,
    required String body,
    required String user,
    required Map<String, dynamic> data,
  }) = _AppNotification;

  factory AppNotification.fromJson(Map<String, dynamic> json) =>
      _$AppNotificationFromJson(json);
}

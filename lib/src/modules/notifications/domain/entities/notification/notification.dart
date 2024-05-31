import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sambhavya_package/src/modules/notifications/domain/entities/notificationType/notification_type.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class Notification with _$Notification {
  const factory Notification({
    required String id,
    required NotificationType type,
    required String title,
    required String body,
    required String user,
    required Map<String, dynamic> data,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}

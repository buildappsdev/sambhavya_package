import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sambhavya_package/src/modules/user/domain/entities/user/user.dart';
import 'package:sambhavya_package/src/modules/user/infra/repositories/user/user_repository.dart';

final userProvider = FutureProvider.family<AppUser, String>((
  ref,
  userId,
) async {
  return ref.read(userDatabaseProvider).getUser(id: userId);
});

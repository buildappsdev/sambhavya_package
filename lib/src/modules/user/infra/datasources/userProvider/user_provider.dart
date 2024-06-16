import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sambhavya_package/src/modules/user/domain/entities/user/user.dart';
import 'package:sambhavya_package/src/modules/user/infra/repositories/user/user_repository.dart';

final userFromUidProvider = FutureProvider.family<AppUser?, String>((
  ref,
  userId,
) async {
  try {
    final user = await ref.read(userDatabaseProvider).getUser(id: userId);

    return user;
  } catch (e) {
    rethrow;
  }
});

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:sambhavya_package/src/modules/firebase/firestore/infra/repositories/firestore_repository.dart';
import 'package:sambhavya_package/src/modules/user/domain/entities/user/user.dart';

final userDatabaseProvider = Provider((ref) => _UserDatabaseController(ref));

class _UserDatabaseController {
  final Ref _ref;

  _UserDatabaseController(this._ref);

  final firestore = FirebaseFirestore.instance;

  static const String usersCollection = 'users';

  Future<void> createNewUser(AppUser user) async {
    await _ref.read(firestoreProvider).addDocumentToCollection(
          usersCollection,
          user.id,
          user.toJson(),
        );
  }

  Future<AppUser> getUser({required String id}) async {
    final userDocument =
        await _ref.read(firestoreProvider).getDocumentsFromCollection(
              usersCollection,
              id,
            );

    return AppUser.fromJson(userDocument.data()!);
  }
}

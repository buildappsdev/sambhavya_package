import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sambhavya_package/sambhavya_package.dart';
import 'package:sambhavya_package/src/modules/firebase/firestore/infra/repositories/firestore_repository.dart';

final counsellorDatabaseProvider =
    Provider((ref) => _CounsellorDatabaseController(ref));

class _CounsellorDatabaseController {
  final Ref _ref;

  _CounsellorDatabaseController(this._ref);

  static const String counsellorsCollection = 'counsellors';

  Future<List<Counsellor>> getCounsellors() async {
    final counsellorsSnapshot = await _ref
        .read(firestoreProvider)
        .getDocumentsFromCollection(counsellorsCollection);

    return counsellorsSnapshot.docs
        .map((doc) => Counsellor.fromJson(doc.data()))
        .toList();
  }
}

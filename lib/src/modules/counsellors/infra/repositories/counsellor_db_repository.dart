import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
}

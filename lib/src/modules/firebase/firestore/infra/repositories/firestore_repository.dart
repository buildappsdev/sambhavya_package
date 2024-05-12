import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final firestoreProvider = Provider((ref) => _FirestoreController());

class _FirestoreController {
  _FirestoreController();

  final firestore = FirebaseFirestore.instance;

  Future<void> addDocumentToCollection(
      String collection, String? id, Map<String, dynamic> data) async {
    if (id != null) {
      await firestore.collection(collection).doc(id).set(data);
    } else {
      await firestore.collection(collection).add(data);
    }
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getAllDocumentsFromCollection(
      String collection) async {
    return await firestore.collection(collection).get();
  }

  Future<QuerySnapshot<Map<String, dynamic>>>
      getDocumentsFromCollectionWithQuery({
    required String collection,
    required List<FirebaseQuery> queries,
    String? orderByField,
    int? limit,
  }) async {
    var querySnapshot = firestore.collection(collection).where(
          queries.first.field,
          isEqualTo: queries.first.value,
        );

    for (var query in queries) {
      switch (query.firebaseQueryType) {
        case FirebaseQueryType.isEqualTo:
          querySnapshot =
              querySnapshot.where(query.field, isEqualTo: query.value);
          break;
        case FirebaseQueryType.isGreaterThan:
          querySnapshot =
              querySnapshot.where(query.field, isGreaterThan: query.value);
          break;
        case FirebaseQueryType.isLessThan:
          querySnapshot =
              querySnapshot.where(query.field, isLessThan: query.value);
          break;
        case FirebaseQueryType.isGreaterThanOrEqualTo:
          querySnapshot = querySnapshot.where(query.field,
              isGreaterThanOrEqualTo: query.value);
          break;
        case FirebaseQueryType.isLessThanOrEqualTo:
          querySnapshot = querySnapshot.where(query.field,
              isLessThanOrEqualTo: query.value);
          break;
        case null:
          break;
      }
    }

    if (orderByField != null) {
      querySnapshot = querySnapshot.orderBy(orderByField);
    }

    if (limit != null) {
      querySnapshot = querySnapshot.limit(limit);
    }

    return await querySnapshot.get();
  }
}

enum FirebaseQueryType {
  isEqualTo,
  isGreaterThan,
  isLessThan,
  isGreaterThanOrEqualTo,
  isLessThanOrEqualTo
}

class FirebaseQuery {
  final String field;
  final FirebaseQueryType? firebaseQueryType;
  final dynamic value;

  FirebaseQuery(
      {required this.field,
      required this.value,
      this.firebaseQueryType = FirebaseQueryType.isEqualTo});
}

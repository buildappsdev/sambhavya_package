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

  Future<DocumentSnapshot<Map<String, dynamic>>> getDocumentsFromCollection(
      String collection, String documentId) async {
    try {
      return await firestore.collection(collection).doc(documentId).get();
    } catch (e) {
      rethrow;
    }
  }

  Future<QuerySnapshot<Map<String, dynamic>>>
      getDocumentsFromCollectionWithQuery({
    required String collection,
    required FirebaseQuery query,
    String? orderByField,
    int? limit,
    bool? descending,
  }) async {
    var querySnapshot = firestore.collection(collection).where(
          query.field,
          isEqualTo: query.value,
        );

    if (orderByField != null) {
      querySnapshot =
          querySnapshot.orderBy(orderByField, descending: descending ?? false);
    }

    if (limit != null) {
      querySnapshot = querySnapshot.limit(limit);
    }

    return await querySnapshot.get();
  }

//TODO Hardcoded Replace Later
  Future<QuerySnapshot<Map<String, dynamic>>>
      getDocumentsFromCollectionWithQuery7Days({
    required String collection,
    required FirebaseQuery query,
    String? orderByField,
    int? limit,
  }) async {
    var querySnapshot = firestore
        .collection(collection)
        .where(
          query.field,
          isEqualTo: query.value,
        )
        .where(
          'dateTime',
          isLessThanOrEqualTo: DateTime.now().add(Duration(days: 7)),
        )
        .where(
          'dateTime',
          isGreaterThanOrEqualTo: DateTime.now(),
        );

    if (orderByField != null) {
      querySnapshot = querySnapshot.orderBy(orderByField);
    }

    if (limit != null) {
      querySnapshot = querySnapshot.limit(limit);
    }

    return await querySnapshot.get();
  }
}

class FirebaseQuery {
  final String field;
  final dynamic value;

  FirebaseQuery({
    required this.field,
    required this.value,
  });
}

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

  Future<QuerySnapshot<Map<String, dynamic>>> getDocumentsFromCollection(
      String collection) async {
    return await firestore.collection(collection).get();
  }
}
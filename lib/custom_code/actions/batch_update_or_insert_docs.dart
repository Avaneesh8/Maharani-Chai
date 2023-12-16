// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future batchUpdateOrInsertDocs(
  int? blendcount,
  List<int>? count,
  List<double>? ratio,
  List<DocumentReference>? documentRef,
) async {
  // null check
  blendcount ??= 0;
  count ??= [];
  ratio ??= [];
  documentRef = documentRef ?? [];

  // Get a reference to the Firestore database
  final firestore = FirebaseFirestore.instance;

  // Get a reference to the collection
  final collectionRef = firestore.collection('teabag');
  // Insert the new documents in the collection
  for (int i = 0; i < documentRef.length; i++) {
    // old code
    // final doc = createOrdersRecordData(name: field1[i], date: field2[i], orderid: field3[i]);

    // new code
    final doc = {
      'count': count[i] - blendcount * ratio[i],
    };

    // Check if a document with the given order ID already exists in the collection
    final docRef = collectionRef.doc(documentRef[i].id);
    final docSnapshot = await docRef.get();

    if (docSnapshot.exists) {
      // Update the existing document with the new data
      await docRef.update(doc);
    } else {
      // Add a new document to the collection
      await collectionRef.add(doc);
    }
  }
}

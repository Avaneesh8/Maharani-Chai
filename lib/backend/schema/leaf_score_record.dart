import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeafScoreRecord extends FirestoreRecord {
  LeafScoreRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Leaf_Score" field.
  String? _leafScore;
  String get leafScore => _leafScore ?? '';
  bool hasLeafScore() => _leafScore != null;

  void _initializeFields() {
    _leafScore = snapshotData['Leaf_Score'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Leaf_Score');

  static Stream<LeafScoreRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LeafScoreRecord.fromSnapshot(s));

  static Future<LeafScoreRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LeafScoreRecord.fromSnapshot(s));

  static LeafScoreRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LeafScoreRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LeafScoreRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LeafScoreRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LeafScoreRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LeafScoreRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLeafScoreRecordData({
  String? leafScore,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Leaf_Score': leafScore,
    }.withoutNulls,
  );

  return firestoreData;
}

class LeafScoreRecordDocumentEquality implements Equality<LeafScoreRecord> {
  const LeafScoreRecordDocumentEquality();

  @override
  bool equals(LeafScoreRecord? e1, LeafScoreRecord? e2) {
    return e1?.leafScore == e2?.leafScore;
  }

  @override
  int hash(LeafScoreRecord? e) => const ListEquality().hash([e?.leafScore]);

  @override
  bool isValidKey(Object? o) => o is LeafScoreRecord;
}

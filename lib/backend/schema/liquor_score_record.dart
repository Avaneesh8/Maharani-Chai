import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LiquorScoreRecord extends FirestoreRecord {
  LiquorScoreRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Liquor_Score" field.
  String? _liquorScore;
  String get liquorScore => _liquorScore ?? '';
  bool hasLiquorScore() => _liquorScore != null;

  void _initializeFields() {
    _liquorScore = snapshotData['Liquor_Score'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Liquor_Score');

  static Stream<LiquorScoreRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LiquorScoreRecord.fromSnapshot(s));

  static Future<LiquorScoreRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LiquorScoreRecord.fromSnapshot(s));

  static LiquorScoreRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LiquorScoreRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LiquorScoreRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LiquorScoreRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LiquorScoreRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LiquorScoreRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLiquorScoreRecordData({
  String? liquorScore,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Liquor_Score': liquorScore,
    }.withoutNulls,
  );

  return firestoreData;
}

class LiquorScoreRecordDocumentEquality implements Equality<LiquorScoreRecord> {
  const LiquorScoreRecordDocumentEquality();

  @override
  bool equals(LiquorScoreRecord? e1, LiquorScoreRecord? e2) {
    return e1?.liquorScore == e2?.liquorScore;
  }

  @override
  int hash(LiquorScoreRecord? e) => const ListEquality().hash([e?.liquorScore]);

  @override
  bool isValidKey(Object? o) => o is LiquorScoreRecord;
}

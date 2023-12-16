import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SourceRecord extends FirestoreRecord {
  SourceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Source" field.
  String? _source;
  String get source => _source ?? '';
  bool hasSource() => _source != null;

  void _initializeFields() {
    _source = snapshotData['Source'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Source');

  static Stream<SourceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SourceRecord.fromSnapshot(s));

  static Future<SourceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SourceRecord.fromSnapshot(s));

  static SourceRecord fromSnapshot(DocumentSnapshot snapshot) => SourceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SourceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SourceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SourceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SourceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSourceRecordData({
  String? source,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Source': source,
    }.withoutNulls,
  );

  return firestoreData;
}

class SourceRecordDocumentEquality implements Equality<SourceRecord> {
  const SourceRecordDocumentEquality();

  @override
  bool equals(SourceRecord? e1, SourceRecord? e2) {
    return e1?.source == e2?.source;
  }

  @override
  int hash(SourceRecord? e) => const ListEquality().hash([e?.source]);

  @override
  bool isValidKey(Object? o) => o is SourceRecord;
}

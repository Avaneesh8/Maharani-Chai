import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PreviousBlendsRecord extends FirestoreRecord {
  PreviousBlendsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date_of_blend" field.
  DateTime? _dateOfBlend;
  DateTime? get dateOfBlend => _dateOfBlend;
  bool hasDateOfBlend() => _dateOfBlend != null;

  // "nam_of_blend" field.
  String? _namOfBlend;
  String get namOfBlend => _namOfBlend ?? '';
  bool hasNamOfBlend() => _namOfBlend != null;

  // "average_cost_of_blend" field.
  double? _averageCostOfBlend;
  double get averageCostOfBlend => _averageCostOfBlend ?? 0.0;
  bool hasAverageCostOfBlend() => _averageCostOfBlend != null;

  // "number_of_blends" field.
  int? _numberOfBlends;
  int get numberOfBlends => _numberOfBlends ?? 0;
  bool hasNumberOfBlends() => _numberOfBlends != null;

  void _initializeFields() {
    _dateOfBlend = snapshotData['date_of_blend'] as DateTime?;
    _namOfBlend = snapshotData['nam_of_blend'] as String?;
    _averageCostOfBlend =
        castToType<double>(snapshotData['average_cost_of_blend']);
    _numberOfBlends = castToType<int>(snapshotData['number_of_blends']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('previousBlends');

  static Stream<PreviousBlendsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PreviousBlendsRecord.fromSnapshot(s));

  static Future<PreviousBlendsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PreviousBlendsRecord.fromSnapshot(s));

  static PreviousBlendsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PreviousBlendsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PreviousBlendsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PreviousBlendsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PreviousBlendsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PreviousBlendsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPreviousBlendsRecordData({
  DateTime? dateOfBlend,
  String? namOfBlend,
  double? averageCostOfBlend,
  int? numberOfBlends,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date_of_blend': dateOfBlend,
      'nam_of_blend': namOfBlend,
      'average_cost_of_blend': averageCostOfBlend,
      'number_of_blends': numberOfBlends,
    }.withoutNulls,
  );

  return firestoreData;
}

class PreviousBlendsRecordDocumentEquality
    implements Equality<PreviousBlendsRecord> {
  const PreviousBlendsRecordDocumentEquality();

  @override
  bool equals(PreviousBlendsRecord? e1, PreviousBlendsRecord? e2) {
    return e1?.dateOfBlend == e2?.dateOfBlend &&
        e1?.namOfBlend == e2?.namOfBlend &&
        e1?.averageCostOfBlend == e2?.averageCostOfBlend &&
        e1?.numberOfBlends == e2?.numberOfBlends;
  }

  @override
  int hash(PreviousBlendsRecord? e) => const ListEquality().hash([
        e?.dateOfBlend,
        e?.namOfBlend,
        e?.averageCostOfBlend,
        e?.numberOfBlends
      ]);

  @override
  bool isValidKey(Object? o) => o is PreviousBlendsRecord;
}

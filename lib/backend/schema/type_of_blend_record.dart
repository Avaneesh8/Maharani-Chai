import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TypeOfBlendRecord extends FirestoreRecord {
  TypeOfBlendRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "blends_type" field.
  String? _blendsType;
  String get blendsType => _blendsType ?? '';
  bool hasBlendsType() => _blendsType != null;

  void _initializeFields() {
    _blendsType = snapshotData['blends_type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Type_of_Blend');

  static Stream<TypeOfBlendRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TypeOfBlendRecord.fromSnapshot(s));

  static Future<TypeOfBlendRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TypeOfBlendRecord.fromSnapshot(s));

  static TypeOfBlendRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TypeOfBlendRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TypeOfBlendRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TypeOfBlendRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TypeOfBlendRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TypeOfBlendRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTypeOfBlendRecordData({
  String? blendsType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'blends_type': blendsType,
    }.withoutNulls,
  );

  return firestoreData;
}

class TypeOfBlendRecordDocumentEquality implements Equality<TypeOfBlendRecord> {
  const TypeOfBlendRecordDocumentEquality();

  @override
  bool equals(TypeOfBlendRecord? e1, TypeOfBlendRecord? e2) {
    return e1?.blendsType == e2?.blendsType;
  }

  @override
  int hash(TypeOfBlendRecord? e) => const ListEquality().hash([e?.blendsType]);

  @override
  bool isValidKey(Object? o) => o is TypeOfBlendRecord;
}

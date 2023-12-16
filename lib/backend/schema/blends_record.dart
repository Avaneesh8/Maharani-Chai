import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BlendsRecord extends FirestoreRecord {
  BlendsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Blend" field.
  List<String>? _blend;
  List<String> get blend => _blend ?? const [];
  bool hasBlend() => _blend != null;

  // "R/S" field.
  String? _rS;
  String get rS => _rS ?? '';
  bool hasRS() => _rS != null;

  // "Invoice number" field.
  String? _invoiceNumber;
  String get invoiceNumber => _invoiceNumber ?? '';
  bool hasInvoiceNumber() => _invoiceNumber != null;

  // "Garden" field.
  String? _garden;
  String get garden => _garden ?? '';
  bool hasGarden() => _garden != null;

  // "grade" field.
  String? _grade;
  String get grade => _grade ?? '';
  bool hasGrade() => _grade != null;

  // "kgs/bag" field.
  double? _kgsBag;
  double get kgsBag => _kgsBag ?? 0.0;
  bool hasKgsBag() => _kgsBag != null;

  // "cost" field.
  double? _cost;
  double get cost => _cost ?? 0.0;
  bool hasCost() => _cost != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  bool hasCount() => _count != null;

  // "source" field.
  String? _source;
  String get source => _source ?? '';
  bool hasSource() => _source != null;

  // "leaf score" field.
  String? _leafScore;
  String get leafScore => _leafScore ?? '';
  bool hasLeafScore() => _leafScore != null;

  // "liquor score" field.
  String? _liquorScore;
  String get liquorScore => _liquorScore ?? '';
  bool hasLiquorScore() => _liquorScore != null;

  // "Blend_type" field.
  String? _blendType;
  String get blendType => _blendType ?? '';
  bool hasBlendType() => _blendType != null;

  // "Ratio" field.
  double? _ratio;
  double get ratio => _ratio ?? 0.0;
  bool hasRatio() => _ratio != null;

  // "doc_ref_teabag" field.
  DocumentReference? _docRefTeabag;
  DocumentReference? get docRefTeabag => _docRefTeabag;
  bool hasDocRefTeabag() => _docRefTeabag != null;

  void _initializeFields() {
    _blend = getDataList(snapshotData['Blend']);
    _rS = snapshotData['R/S'] as String?;
    _invoiceNumber = snapshotData['Invoice number'] as String?;
    _garden = snapshotData['Garden'] as String?;
    _grade = snapshotData['grade'] as String?;
    _kgsBag = castToType<double>(snapshotData['kgs/bag']);
    _cost = castToType<double>(snapshotData['cost']);
    _count = castToType<int>(snapshotData['count']);
    _source = snapshotData['source'] as String?;
    _leafScore = snapshotData['leaf score'] as String?;
    _liquorScore = snapshotData['liquor score'] as String?;
    _blendType = snapshotData['Blend_type'] as String?;
    _ratio = castToType<double>(snapshotData['Ratio']);
    _docRefTeabag = snapshotData['doc_ref_teabag'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Blends');

  static Stream<BlendsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BlendsRecord.fromSnapshot(s));

  static Future<BlendsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BlendsRecord.fromSnapshot(s));

  static BlendsRecord fromSnapshot(DocumentSnapshot snapshot) => BlendsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BlendsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BlendsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BlendsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BlendsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBlendsRecordData({
  String? rS,
  String? invoiceNumber,
  String? garden,
  String? grade,
  double? kgsBag,
  double? cost,
  int? count,
  String? source,
  String? leafScore,
  String? liquorScore,
  String? blendType,
  double? ratio,
  DocumentReference? docRefTeabag,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'R/S': rS,
      'Invoice number': invoiceNumber,
      'Garden': garden,
      'grade': grade,
      'kgs/bag': kgsBag,
      'cost': cost,
      'count': count,
      'source': source,
      'leaf score': leafScore,
      'liquor score': liquorScore,
      'Blend_type': blendType,
      'Ratio': ratio,
      'doc_ref_teabag': docRefTeabag,
    }.withoutNulls,
  );

  return firestoreData;
}

class BlendsRecordDocumentEquality implements Equality<BlendsRecord> {
  const BlendsRecordDocumentEquality();

  @override
  bool equals(BlendsRecord? e1, BlendsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.blend, e2?.blend) &&
        e1?.rS == e2?.rS &&
        e1?.invoiceNumber == e2?.invoiceNumber &&
        e1?.garden == e2?.garden &&
        e1?.grade == e2?.grade &&
        e1?.kgsBag == e2?.kgsBag &&
        e1?.cost == e2?.cost &&
        e1?.count == e2?.count &&
        e1?.source == e2?.source &&
        e1?.leafScore == e2?.leafScore &&
        e1?.liquorScore == e2?.liquorScore &&
        e1?.blendType == e2?.blendType &&
        e1?.ratio == e2?.ratio &&
        e1?.docRefTeabag == e2?.docRefTeabag;
  }

  @override
  int hash(BlendsRecord? e) => const ListEquality().hash([
        e?.blend,
        e?.rS,
        e?.invoiceNumber,
        e?.garden,
        e?.grade,
        e?.kgsBag,
        e?.cost,
        e?.count,
        e?.source,
        e?.leafScore,
        e?.liquorScore,
        e?.blendType,
        e?.ratio,
        e?.docRefTeabag
      ]);

  @override
  bool isValidKey(Object? o) => o is BlendsRecord;
}

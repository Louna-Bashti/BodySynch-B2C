import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RepasRecord extends FirestoreRecord {
  RepasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "idusers" field.
  String? _idusers;
  String get idusers => _idusers ?? '';
  bool hasIdusers() => _idusers != null;

  // "nomRepas" field.
  String? _nomRepas;
  String get nomRepas => _nomRepas ?? '';
  bool hasNomRepas() => _nomRepas != null;

  // "datePrise" field.
  DateTime? _datePrise;
  DateTime? get datePrise => _datePrise;
  bool hasDatePrise() => _datePrise != null;

  // "calorie" field.
  double? _calorie;
  double get calorie => _calorie ?? 0.0;
  bool hasCalorie() => _calorie != null;

  void _initializeFields() {
    _idusers = snapshotData['idusers'] as String?;
    _nomRepas = snapshotData['nomRepas'] as String?;
    _datePrise = snapshotData['datePrise'] as DateTime?;
    _calorie = castToType<double>(snapshotData['calorie']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Repas');

  static Stream<RepasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RepasRecord.fromSnapshot(s));

  static Future<RepasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RepasRecord.fromSnapshot(s));

  static RepasRecord fromSnapshot(DocumentSnapshot snapshot) => RepasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RepasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RepasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RepasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RepasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRepasRecordData({
  String? idusers,
  String? nomRepas,
  DateTime? datePrise,
  double? calorie,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idusers': idusers,
      'nomRepas': nomRepas,
      'datePrise': datePrise,
      'calorie': calorie,
    }.withoutNulls,
  );

  return firestoreData;
}

class RepasRecordDocumentEquality implements Equality<RepasRecord> {
  const RepasRecordDocumentEquality();

  @override
  bool equals(RepasRecord? e1, RepasRecord? e2) {
    return e1?.idusers == e2?.idusers &&
        e1?.nomRepas == e2?.nomRepas &&
        e1?.datePrise == e2?.datePrise &&
        e1?.calorie == e2?.calorie;
  }

  @override
  int hash(RepasRecord? e) => const ListEquality()
      .hash([e?.idusers, e?.nomRepas, e?.datePrise, e?.calorie]);

  @override
  bool isValidKey(Object? o) => o is RepasRecord;
}

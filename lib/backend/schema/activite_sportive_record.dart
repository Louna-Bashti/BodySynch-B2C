import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActiviteSportiveRecord extends FirestoreRecord {
  ActiviteSportiveRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "dureeActivite" field.
  double? _dureeActivite;
  double get dureeActivite => _dureeActivite ?? 0.0;
  bool hasDureeActivite() => _dureeActivite != null;

  // "idusers" field.
  String? _idusers;
  String get idusers => _idusers ?? '';
  bool hasIdusers() => _idusers != null;

  // "nomActivite" field.
  String? _nomActivite;
  String get nomActivite => _nomActivite ?? '';
  bool hasNomActivite() => _nomActivite != null;

  // "dateActivite" field.
  DateTime? _dateActivite;
  DateTime? get dateActivite => _dateActivite;
  bool hasDateActivite() => _dateActivite != null;

  void _initializeFields() {
    _dureeActivite = castToType<double>(snapshotData['dureeActivite']);
    _idusers = snapshotData['idusers'] as String?;
    _nomActivite = snapshotData['nomActivite'] as String?;
    _dateActivite = snapshotData['dateActivite'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ActiviteSportive');

  static Stream<ActiviteSportiveRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActiviteSportiveRecord.fromSnapshot(s));

  static Future<ActiviteSportiveRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ActiviteSportiveRecord.fromSnapshot(s));

  static ActiviteSportiveRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActiviteSportiveRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActiviteSportiveRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActiviteSportiveRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActiviteSportiveRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActiviteSportiveRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActiviteSportiveRecordData({
  double? dureeActivite,
  String? idusers,
  String? nomActivite,
  DateTime? dateActivite,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dureeActivite': dureeActivite,
      'idusers': idusers,
      'nomActivite': nomActivite,
      'dateActivite': dateActivite,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActiviteSportiveRecordDocumentEquality
    implements Equality<ActiviteSportiveRecord> {
  const ActiviteSportiveRecordDocumentEquality();

  @override
  bool equals(ActiviteSportiveRecord? e1, ActiviteSportiveRecord? e2) {
    return e1?.dureeActivite == e2?.dureeActivite &&
        e1?.idusers == e2?.idusers &&
        e1?.nomActivite == e2?.nomActivite &&
        e1?.dateActivite == e2?.dateActivite;
  }

  @override
  int hash(ActiviteSportiveRecord? e) => const ListEquality()
      .hash([e?.dureeActivite, e?.idusers, e?.nomActivite, e?.dateActivite]);

  @override
  bool isValidKey(Object? o) => o is ActiviteSportiveRecord;
}

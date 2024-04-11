import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class MessageRecord extends FirestoreRecord {
  MessageRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "valeur" field.
  String? _valeur;
  String get valeur => _valeur ?? '';
  bool hasValeur() => _valeur != null;

  // "idusers" field.
  String? _idusers;
  String get idusers => _idusers ?? '';
  bool hasIdusers() => _idusers != null;

  // "dateEnvoie" field.
  DateTime? _dateEnvoie;
  DateTime? get dateEnvoie => _dateEnvoie;
  bool hasDateEnvoie() => _dateEnvoie != null;

  void _initializeFields() {
    _valeur = snapshotData['valeur'] as String?;
    _idusers = snapshotData['idusers'] as String?;
    _dateEnvoie = snapshotData['dateEnvoie'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('message');

  static Stream<MessageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessageRecord.fromSnapshot(s));

  static Future<MessageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessageRecord.fromSnapshot(s));

  static MessageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MessageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessageRecordData({
  String? valeur,
  String? idusers,
  DateTime? dateEnvoie,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'valeur': valeur,
      'idusers': idusers,
      'dateEnvoie': dateEnvoie,
    }.withoutNulls,
  );

  return firestoreData;
}

class MessageRecordDocumentEquality implements Equality<MessageRecord> {
  const MessageRecordDocumentEquality();

  @override
  bool equals(MessageRecord? e1, MessageRecord? e2) {
    return e1?.valeur == e2?.valeur &&
        e1?.idusers == e2?.idusers &&
        e1?.dateEnvoie == e2?.dateEnvoie;
  }

  @override
  int hash(MessageRecord? e) =>
      const ListEquality().hash([e?.valeur, e?.idusers, e?.dateEnvoie]);

  @override
  bool isValidKey(Object? o) => o is MessageRecord;
}

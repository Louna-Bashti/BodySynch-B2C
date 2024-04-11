import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "prenom" field.
  String? _prenom;
  String get prenom => _prenom ?? '';
  bool hasPrenom() => _prenom != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "sexe" field.
  String? _sexe;
  String get sexe => _sexe ?? '';
  bool hasSexe() => _sexe != null;

  // "sommeil" field.
  double? _sommeil;
  double get sommeil => _sommeil ?? 0.0;
  bool hasSommeil() => _sommeil != null;

  // "taille" field.
  double? _taille;
  double get taille => _taille ?? 0.0;
  bool hasTaille() => _taille != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "dateNaiss" field.
  DateTime? _dateNaiss;
  DateTime? get dateNaiss => _dateNaiss;
  bool hasDateNaiss() => _dateNaiss != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _nom = snapshotData['nom'] as String?;
    _password = snapshotData['password'] as String?;
    _prenom = snapshotData['prenom'] as String?;
    _role = snapshotData['role'] as String?;
    _sexe = snapshotData['sexe'] as String?;
    _sommeil = castToType<double>(snapshotData['sommeil']);
    _taille = castToType<double>(snapshotData['taille']);
    _userName = snapshotData['userName'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _dateNaiss = snapshotData['dateNaiss'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? nom,
  String? password,
  String? prenom,
  String? role,
  String? sexe,
  double? sommeil,
  double? taille,
  String? userName,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? photoUrl,
  DateTime? dateNaiss,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'nom': nom,
      'password': password,
      'prenom': prenom,
      'role': role,
      'sexe': sexe,
      'sommeil': sommeil,
      'taille': taille,
      'userName': userName,
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'photo_url': photoUrl,
      'dateNaiss': dateNaiss,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.nom == e2?.nom &&
        e1?.password == e2?.password &&
        e1?.prenom == e2?.prenom &&
        e1?.role == e2?.role &&
        e1?.sexe == e2?.sexe &&
        e1?.sommeil == e2?.sommeil &&
        e1?.taille == e2?.taille &&
        e1?.userName == e2?.userName &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.dateNaiss == e2?.dateNaiss;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.nom,
        e?.password,
        e?.prenom,
        e?.role,
        e?.sexe,
        e?.sommeil,
        e?.taille,
        e?.userName,
        e?.displayName,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.photoUrl,
        e?.dateNaiss
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}

// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NutrimentsStruct extends FFFirebaseStruct {
  NutrimentsStruct({
    int? enercKcal,
    double? procnt,
    double? fat,
    double? chocdf,
    double? fibtg,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _enercKcal = enercKcal,
        _procnt = procnt,
        _fat = fat,
        _chocdf = chocdf,
        _fibtg = fibtg,
        super(firestoreUtilData);

  // "ENERC_KCAL" field.
  int? _enercKcal;
  int get enercKcal => _enercKcal ?? 0;
  set enercKcal(int? val) => _enercKcal = val;
  void incrementEnercKcal(int amount) => _enercKcal = enercKcal + amount;
  bool hasEnercKcal() => _enercKcal != null;

  // "PROCNT" field.
  double? _procnt;
  double get procnt => _procnt ?? 0.0;
  set procnt(double? val) => _procnt = val;
  void incrementProcnt(double amount) => _procnt = procnt + amount;
  bool hasProcnt() => _procnt != null;

  // "FAT" field.
  double? _fat;
  double get fat => _fat ?? 0.0;
  set fat(double? val) => _fat = val;
  void incrementFat(double amount) => _fat = fat + amount;
  bool hasFat() => _fat != null;

  // "CHOCDF" field.
  double? _chocdf;
  double get chocdf => _chocdf ?? 0.0;
  set chocdf(double? val) => _chocdf = val;
  void incrementChocdf(double amount) => _chocdf = chocdf + amount;
  bool hasChocdf() => _chocdf != null;

  // "FIBTG" field.
  double? _fibtg;
  double get fibtg => _fibtg ?? 0.0;
  set fibtg(double? val) => _fibtg = val;
  void incrementFibtg(double amount) => _fibtg = fibtg + amount;
  bool hasFibtg() => _fibtg != null;

  static NutrimentsStruct fromMap(Map<String, dynamic> data) =>
      NutrimentsStruct(
        enercKcal: castToType<int>(data['ENERC_KCAL']),
        procnt: castToType<double>(data['PROCNT']),
        fat: castToType<double>(data['FAT']),
        chocdf: castToType<double>(data['CHOCDF']),
        fibtg: castToType<double>(data['FIBTG']),
      );

  static NutrimentsStruct? maybeFromMap(dynamic data) => data is Map
      ? NutrimentsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ENERC_KCAL': _enercKcal,
        'PROCNT': _procnt,
        'FAT': _fat,
        'CHOCDF': _chocdf,
        'FIBTG': _fibtg,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ENERC_KCAL': serializeParam(
          _enercKcal,
          ParamType.int,
        ),
        'PROCNT': serializeParam(
          _procnt,
          ParamType.double,
        ),
        'FAT': serializeParam(
          _fat,
          ParamType.double,
        ),
        'CHOCDF': serializeParam(
          _chocdf,
          ParamType.double,
        ),
        'FIBTG': serializeParam(
          _fibtg,
          ParamType.double,
        ),
      }.withoutNulls;

  static NutrimentsStruct fromSerializableMap(Map<String, dynamic> data) =>
      NutrimentsStruct(
        enercKcal: deserializeParam(
          data['ENERC_KCAL'],
          ParamType.int,
          false,
        ),
        procnt: deserializeParam(
          data['PROCNT'],
          ParamType.double,
          false,
        ),
        fat: deserializeParam(
          data['FAT'],
          ParamType.double,
          false,
        ),
        chocdf: deserializeParam(
          data['CHOCDF'],
          ParamType.double,
          false,
        ),
        fibtg: deserializeParam(
          data['FIBTG'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'NutrimentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NutrimentsStruct &&
        enercKcal == other.enercKcal &&
        procnt == other.procnt &&
        fat == other.fat &&
        chocdf == other.chocdf &&
        fibtg == other.fibtg;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([enercKcal, procnt, fat, chocdf, fibtg]);
}

NutrimentsStruct createNutrimentsStruct({
  int? enercKcal,
  double? procnt,
  double? fat,
  double? chocdf,
  double? fibtg,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NutrimentsStruct(
      enercKcal: enercKcal,
      procnt: procnt,
      fat: fat,
      chocdf: chocdf,
      fibtg: fibtg,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NutrimentsStruct? updateNutrimentsStruct(
  NutrimentsStruct? nutriments, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    nutriments
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNutrimentsStructData(
  Map<String, dynamic> firestoreData,
  NutrimentsStruct? nutriments,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (nutriments == null) {
    return;
  }
  if (nutriments.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && nutriments.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final nutrimentsData = getNutrimentsFirestoreData(nutriments, forFieldValue);
  final nestedData = nutrimentsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = nutriments.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNutrimentsFirestoreData(
  NutrimentsStruct? nutriments, [
  bool forFieldValue = false,
]) {
  if (nutriments == null) {
    return {};
  }
  final firestoreData = mapToFirestore(nutriments.toMap());

  // Add any Firestore field values
  nutriments.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNutrimentsListFirestoreData(
  List<NutrimentsStruct>? nutrimentss,
) =>
    nutrimentss?.map((e) => getNutrimentsFirestoreData(e, true)).toList() ?? [];

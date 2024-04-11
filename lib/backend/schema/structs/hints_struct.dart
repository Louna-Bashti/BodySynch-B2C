// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HintsStruct extends FFFirebaseStruct {
  HintsStruct({
    List<NourritureStruct>? food,
    List<MesuresStruct>? measures,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _food = food,
        _measures = measures,
        super(firestoreUtilData);

  // "food" field.
  List<NourritureStruct>? _food;
  List<NourritureStruct> get food => _food ?? const [];
  set food(List<NourritureStruct>? val) => _food = val;
  void updateFood(Function(List<NourritureStruct>) updateFn) =>
      updateFn(_food ??= []);
  bool hasFood() => _food != null;

  // "measures" field.
  List<MesuresStruct>? _measures;
  List<MesuresStruct> get measures => _measures ?? const [];
  set measures(List<MesuresStruct>? val) => _measures = val;
  void updateMeasures(Function(List<MesuresStruct>) updateFn) =>
      updateFn(_measures ??= []);
  bool hasMeasures() => _measures != null;

  static HintsStruct fromMap(Map<String, dynamic> data) => HintsStruct(
        food: getStructList(
          data['food'],
          NourritureStruct.fromMap,
        ),
        measures: getStructList(
          data['measures'],
          MesuresStruct.fromMap,
        ),
      );

  static HintsStruct? maybeFromMap(dynamic data) =>
      data is Map ? HintsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'food': _food?.map((e) => e.toMap()).toList(),
        'measures': _measures?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'food': serializeParam(
          _food,
          ParamType.DataStruct,
          true,
        ),
        'measures': serializeParam(
          _measures,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static HintsStruct fromSerializableMap(Map<String, dynamic> data) =>
      HintsStruct(
        food: deserializeStructParam<NourritureStruct>(
          data['food'],
          ParamType.DataStruct,
          true,
          structBuilder: NourritureStruct.fromSerializableMap,
        ),
        measures: deserializeStructParam<MesuresStruct>(
          data['measures'],
          ParamType.DataStruct,
          true,
          structBuilder: MesuresStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'HintsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is HintsStruct &&
        listEquality.equals(food, other.food) &&
        listEquality.equals(measures, other.measures);
  }

  @override
  int get hashCode => const ListEquality().hash([food, measures]);
}

HintsStruct createHintsStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HintsStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

HintsStruct? updateHintsStruct(
  HintsStruct? hints, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    hints
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHintsStructData(
  Map<String, dynamic> firestoreData,
  HintsStruct? hints,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (hints == null) {
    return;
  }
  if (hints.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && hints.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final hintsData = getHintsFirestoreData(hints, forFieldValue);
  final nestedData = hintsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = hints.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHintsFirestoreData(
  HintsStruct? hints, [
  bool forFieldValue = false,
]) {
  if (hints == null) {
    return {};
  }
  final firestoreData = mapToFirestore(hints.toMap());

  // Add any Firestore field values
  hints.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHintsListFirestoreData(
  List<HintsStruct>? hintss,
) =>
    hintss?.map((e) => getHintsFirestoreData(e, true)).toList() ?? [];

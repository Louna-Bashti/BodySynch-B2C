// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MesuresStruct extends FFFirebaseStruct {
  MesuresStruct({
    String? uri,
    String? label,
    double? weight,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _uri = uri,
        _label = label,
        _weight = weight,
        super(firestoreUtilData);

  // "uri" field.
  String? _uri;
  String get uri => _uri ?? '';
  set uri(String? val) => _uri = val;
  bool hasUri() => _uri != null;

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;
  bool hasLabel() => _label != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  set weight(double? val) => _weight = val;
  void incrementWeight(double amount) => _weight = weight + amount;
  bool hasWeight() => _weight != null;

  static MesuresStruct fromMap(Map<String, dynamic> data) => MesuresStruct(
        uri: data['uri'] as String?,
        label: data['label'] as String?,
        weight: castToType<double>(data['weight']),
      );

  static MesuresStruct? maybeFromMap(dynamic data) =>
      data is Map ? MesuresStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'uri': _uri,
        'label': _label,
        'weight': _weight,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uri': serializeParam(
          _uri,
          ParamType.String,
        ),
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'weight': serializeParam(
          _weight,
          ParamType.double,
        ),
      }.withoutNulls;

  static MesuresStruct fromSerializableMap(Map<String, dynamic> data) =>
      MesuresStruct(
        uri: deserializeParam(
          data['uri'],
          ParamType.String,
          false,
        ),
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        weight: deserializeParam(
          data['weight'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'MesuresStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MesuresStruct &&
        uri == other.uri &&
        label == other.label &&
        weight == other.weight;
  }

  @override
  int get hashCode => const ListEquality().hash([uri, label, weight]);
}

MesuresStruct createMesuresStruct({
  String? uri,
  String? label,
  double? weight,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MesuresStruct(
      uri: uri,
      label: label,
      weight: weight,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MesuresStruct? updateMesuresStruct(
  MesuresStruct? mesures, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    mesures
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMesuresStructData(
  Map<String, dynamic> firestoreData,
  MesuresStruct? mesures,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (mesures == null) {
    return;
  }
  if (mesures.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && mesures.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final mesuresData = getMesuresFirestoreData(mesures, forFieldValue);
  final nestedData = mesuresData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = mesures.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMesuresFirestoreData(
  MesuresStruct? mesures, [
  bool forFieldValue = false,
]) {
  if (mesures == null) {
    return {};
  }
  final firestoreData = mapToFirestore(mesures.toMap());

  // Add any Firestore field values
  mesures.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMesuresListFirestoreData(
  List<MesuresStruct>? mesuress,
) =>
    mesuress?.map((e) => getMesuresFirestoreData(e, true)).toList() ?? [];

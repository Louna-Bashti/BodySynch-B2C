// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NourritureStruct extends FFFirebaseStruct {
  NourritureStruct({
    String? foodID,
    String? label,
    String? knownAs,
    String? category,
    String? categoryLabel,
    String? imagePath,
    NutrimentsStruct? nutrients,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _foodID = foodID,
        _label = label,
        _knownAs = knownAs,
        _category = category,
        _categoryLabel = categoryLabel,
        _imagePath = imagePath,
        _nutrients = nutrients,
        super(firestoreUtilData);

  // "foodID" field.
  String? _foodID;
  String get foodID => _foodID ?? '';
  set foodID(String? val) => _foodID = val;
  bool hasFoodID() => _foodID != null;

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;
  bool hasLabel() => _label != null;

  // "knownAs" field.
  String? _knownAs;
  String get knownAs => _knownAs ?? '';
  set knownAs(String? val) => _knownAs = val;
  bool hasKnownAs() => _knownAs != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;
  bool hasCategory() => _category != null;

  // "categoryLabel" field.
  String? _categoryLabel;
  String get categoryLabel => _categoryLabel ?? '';
  set categoryLabel(String? val) => _categoryLabel = val;
  bool hasCategoryLabel() => _categoryLabel != null;

  // "imagePath" field.
  String? _imagePath;
  String get imagePath => _imagePath ?? '';
  set imagePath(String? val) => _imagePath = val;
  bool hasImagePath() => _imagePath != null;

  // "nutrients" field.
  NutrimentsStruct? _nutrients;
  NutrimentsStruct get nutrients => _nutrients ?? NutrimentsStruct();
  set nutrients(NutrimentsStruct? val) => _nutrients = val;
  void updateNutrients(Function(NutrimentsStruct) updateFn) =>
      updateFn(_nutrients ??= NutrimentsStruct());
  bool hasNutrients() => _nutrients != null;

  static NourritureStruct fromMap(Map<String, dynamic> data) =>
      NourritureStruct(
        foodID: data['foodID'] as String?,
        label: data['label'] as String?,
        knownAs: data['knownAs'] as String?,
        category: data['category'] as String?,
        categoryLabel: data['categoryLabel'] as String?,
        imagePath: data['imagePath'] as String?,
        nutrients: NutrimentsStruct.maybeFromMap(data['nutrients']),
      );

  static NourritureStruct? maybeFromMap(dynamic data) => data is Map
      ? NourritureStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'foodID': _foodID,
        'label': _label,
        'knownAs': _knownAs,
        'category': _category,
        'categoryLabel': _categoryLabel,
        'imagePath': _imagePath,
        'nutrients': _nutrients?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'foodID': serializeParam(
          _foodID,
          ParamType.String,
        ),
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'knownAs': serializeParam(
          _knownAs,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'categoryLabel': serializeParam(
          _categoryLabel,
          ParamType.String,
        ),
        'imagePath': serializeParam(
          _imagePath,
          ParamType.String,
        ),
        'nutrients': serializeParam(
          _nutrients,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static NourritureStruct fromSerializableMap(Map<String, dynamic> data) =>
      NourritureStruct(
        foodID: deserializeParam(
          data['foodID'],
          ParamType.String,
          false,
        ),
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        knownAs: deserializeParam(
          data['knownAs'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        categoryLabel: deserializeParam(
          data['categoryLabel'],
          ParamType.String,
          false,
        ),
        imagePath: deserializeParam(
          data['imagePath'],
          ParamType.String,
          false,
        ),
        nutrients: deserializeStructParam(
          data['nutrients'],
          ParamType.DataStruct,
          false,
          structBuilder: NutrimentsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'NourritureStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NourritureStruct &&
        foodID == other.foodID &&
        label == other.label &&
        knownAs == other.knownAs &&
        category == other.category &&
        categoryLabel == other.categoryLabel &&
        imagePath == other.imagePath &&
        nutrients == other.nutrients;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [foodID, label, knownAs, category, categoryLabel, imagePath, nutrients]);
}

NourritureStruct createNourritureStruct({
  String? foodID,
  String? label,
  String? knownAs,
  String? category,
  String? categoryLabel,
  String? imagePath,
  NutrimentsStruct? nutrients,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NourritureStruct(
      foodID: foodID,
      label: label,
      knownAs: knownAs,
      category: category,
      categoryLabel: categoryLabel,
      imagePath: imagePath,
      nutrients: nutrients ?? (clearUnsetFields ? NutrimentsStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NourritureStruct? updateNourritureStruct(
  NourritureStruct? nourriture, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    nourriture
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNourritureStructData(
  Map<String, dynamic> firestoreData,
  NourritureStruct? nourriture,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (nourriture == null) {
    return;
  }
  if (nourriture.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && nourriture.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final nourritureData = getNourritureFirestoreData(nourriture, forFieldValue);
  final nestedData = nourritureData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = nourriture.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNourritureFirestoreData(
  NourritureStruct? nourriture, [
  bool forFieldValue = false,
]) {
  if (nourriture == null) {
    return {};
  }
  final firestoreData = mapToFirestore(nourriture.toMap());

  // Handle nested data for "nutrients" field.
  addNutrimentsStructData(
    firestoreData,
    nourriture.hasNutrients() ? nourriture.nutrients : null,
    'nutrients',
    forFieldValue,
  );

  // Add any Firestore field values
  nourriture.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNourritureListFirestoreData(
  List<NourritureStruct>? nourritures,
) =>
    nourritures?.map((e) => getNourritureFirestoreData(e, true)).toList() ?? [];

import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TestGoogleFitCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'test Google Fit',
      apiUrl: 'https://www.googleapis.com/fitness/v1/users/me/dataSources',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer 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',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TestEdamamBanqueNourritureCall {
  static Future<ApiCallResponse> call({
    dynamic nourritureJson,
  }) async {
    final nourriture = _serializeJson(nourritureJson);

    return ApiManager.instance.makeApiCall(
      callName: 'test Edamam banque nourriture',
      apiUrl:
          'https://api.edamam.com/api/food-database/v2/parser?app_id=0c6cb8cf&app_key=817079b4c63586c4b9e64632b351cdc5&nutrition-type=cooking',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'label': "label",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? nourriture(dynamic response) => getJsonField(
        response,
        r'''$..food''',
        true,
      ) as List?;
  static List<String>? nomnourriture(dynamic response) => (getJsonField(
        response,
        r'''$..label''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? nutriments(dynamic response) => getJsonField(
        response,
        r'''$..nutrients''',
        true,
      ) as List?;
  static List<String>? imagenutriment(dynamic response) => (getJsonField(
        response,
        r'''$..image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}

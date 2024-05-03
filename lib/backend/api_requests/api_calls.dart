import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Connection Group Code

class ConnectionGroup {
  static String baseUrl = 'http://localhost:5000';
  static Map<String, String> headers = {};
  static CreationCompteCall creationCompteCall = CreationCompteCall();
  static LoginCall loginCall = LoginCall();
}

class CreationCompteCall {
  Future<ApiCallResponse> call({
    String? nom = '',
    String? prenom = '',
    String? email = '',
    String? adresse = '',
    String? role = '',
    String? username = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nom": "$nom",
  "prenom": "$prenom",
  "email": "$email",
  "adresse": "$adresse",
  "role": "$role",
  "username": "$username",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creation compte',
      apiUrl: '${ConnectionGroup.baseUrl}/user/create',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? password = '',
    String? username = '',
  }) async {
    const ffApiRequestBody = '''
{
  "password": "string",
  "username": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${ConnectionGroup.baseUrl}/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Connection Group Code

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

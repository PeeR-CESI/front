// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    int? userId,
    String? role,
    String? refreshToken,
    String? message,
    String? accessToken,
  })  : _userId = userId,
        _role = role,
        _refreshToken = refreshToken,
        _message = message,
        _accessToken = accessToken;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;
  void incrementUserId(int amount) => _userId = userId + amount;
  bool hasUserId() => _userId != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;
  bool hasRole() => _role != null;

  // "refresh_token" field.
  String? _refreshToken;
  String get refreshToken => _refreshToken ?? '';
  set refreshToken(String? val) => _refreshToken = val;
  bool hasRefreshToken() => _refreshToken != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;
  bool hasMessage() => _message != null;

  // "access_token" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;
  bool hasAccessToken() => _accessToken != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        userId: castToType<int>(data['user_id']),
        role: data['role'] as String?,
        refreshToken: data['refresh_token'] as String?,
        message: data['message'] as String?,
        accessToken: data['access_token'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'user_id': _userId,
        'role': _role,
        'refresh_token': _refreshToken,
        'message': _message,
        'access_token': _accessToken,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'refresh_token': serializeParam(
          _refreshToken,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'access_token': serializeParam(
          _accessToken,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        refreshToken: deserializeParam(
          data['refresh_token'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        accessToken: deserializeParam(
          data['access_token'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        userId == other.userId &&
        role == other.role &&
        refreshToken == other.refreshToken &&
        message == other.message &&
        accessToken == other.accessToken;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([userId, role, refreshToken, message, accessToken]);
}

UserStruct createUserStruct({
  int? userId,
  String? role,
  String? refreshToken,
  String? message,
  String? accessToken,
}) =>
    UserStruct(
      userId: userId,
      role: role,
      refreshToken: refreshToken,
      message: message,
      accessToken: accessToken,
    );

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VisibilitStruct extends BaseStruct {
  VisibilitStruct({
    bool? test,
  }) : _test = test;

  // "test" field.
  bool? _test;
  bool get test => _test ?? false;
  set test(bool? val) => _test = val;
  bool hasTest() => _test != null;

  static VisibilitStruct fromMap(Map<String, dynamic> data) => VisibilitStruct(
        test: data['test'] as bool?,
      );

  static VisibilitStruct? maybeFromMap(dynamic data) => data is Map
      ? VisibilitStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'test': _test,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'test': serializeParam(
          _test,
          ParamType.bool,
        ),
      }.withoutNulls;

  static VisibilitStruct fromSerializableMap(Map<String, dynamic> data) =>
      VisibilitStruct(
        test: deserializeParam(
          data['test'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'VisibilitStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VisibilitStruct && test == other.test;
  }

  @override
  int get hashCode => const ListEquality().hash([test]);
}

VisibilitStruct createVisibilitStruct({
  bool? test,
}) =>
    VisibilitStruct(
      test: test,
    );

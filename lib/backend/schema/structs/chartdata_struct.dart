// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartdataStruct extends BaseStruct {
  ChartdataStruct({
    int? id,
    String? xvalue,
    String? yvalue,
  })  : _id = id,
        _xvalue = xvalue,
        _yvalue = yvalue;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "xvalue" field.
  String? _xvalue;
  String get xvalue => _xvalue ?? '';
  set xvalue(String? val) => _xvalue = val;

  bool hasXvalue() => _xvalue != null;

  // "yvalue" field.
  String? _yvalue;
  String get yvalue => _yvalue ?? '';
  set yvalue(String? val) => _yvalue = val;

  bool hasYvalue() => _yvalue != null;

  static ChartdataStruct fromMap(Map<String, dynamic> data) => ChartdataStruct(
        id: castToType<int>(data['id']),
        xvalue: data['xvalue'] as String?,
        yvalue: data['yvalue'] as String?,
      );

  static ChartdataStruct? maybeFromMap(dynamic data) => data is Map
      ? ChartdataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'xvalue': _xvalue,
        'yvalue': _yvalue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'xvalue': serializeParam(
          _xvalue,
          ParamType.String,
        ),
        'yvalue': serializeParam(
          _yvalue,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChartdataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChartdataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        xvalue: deserializeParam(
          data['xvalue'],
          ParamType.String,
          false,
        ),
        yvalue: deserializeParam(
          data['yvalue'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChartdataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChartdataStruct &&
        id == other.id &&
        xvalue == other.xvalue &&
        yvalue == other.yvalue;
  }

  @override
  int get hashCode => const ListEquality().hash([id, xvalue, yvalue]);
}

ChartdataStruct createChartdataStruct({
  int? id,
  String? xvalue,
  String? yvalue,
}) =>
    ChartdataStruct(
      id: id,
      xvalue: xvalue,
      yvalue: yvalue,
    );

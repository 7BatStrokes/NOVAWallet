// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecentactivityStruct extends BaseStruct {
  RecentactivityStruct({
    String? img,
    String? name,
    String? date,
    String? massges,
    String? idname,
    int? dollar,
    int? id,
    String? images,
  })  : _img = img,
        _name = name,
        _date = date,
        _massges = massges,
        _idname = idname,
        _dollar = dollar,
        _id = id,
        _images = images;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  // "massges" field.
  String? _massges;
  String get massges => _massges ?? '';
  set massges(String? val) => _massges = val;

  bool hasMassges() => _massges != null;

  // "idname" field.
  String? _idname;
  String get idname => _idname ?? '';
  set idname(String? val) => _idname = val;

  bool hasIdname() => _idname != null;

  // "dollar" field.
  int? _dollar;
  int get dollar => _dollar ?? 0;
  set dollar(int? val) => _dollar = val;

  void incrementDollar(int amount) => dollar = dollar + amount;

  bool hasDollar() => _dollar != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "images" field.
  String? _images;
  String get images => _images ?? '';
  set images(String? val) => _images = val;

  bool hasImages() => _images != null;

  static RecentactivityStruct fromMap(Map<String, dynamic> data) =>
      RecentactivityStruct(
        img: data['img'] as String?,
        name: data['name'] as String?,
        date: data['date'] as String?,
        massges: data['massges'] as String?,
        idname: data['idname'] as String?,
        dollar: castToType<int>(data['dollar']),
        id: castToType<int>(data['id']),
        images: data['images'] as String?,
      );

  static RecentactivityStruct? maybeFromMap(dynamic data) => data is Map
      ? RecentactivityStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'img': _img,
        'name': _name,
        'date': _date,
        'massges': _massges,
        'idname': _idname,
        'dollar': _dollar,
        'id': _id,
        'images': _images,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'massges': serializeParam(
          _massges,
          ParamType.String,
        ),
        'idname': serializeParam(
          _idname,
          ParamType.String,
        ),
        'dollar': serializeParam(
          _dollar,
          ParamType.int,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'images': serializeParam(
          _images,
          ParamType.String,
        ),
      }.withoutNulls;

  static RecentactivityStruct fromSerializableMap(Map<String, dynamic> data) =>
      RecentactivityStruct(
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        massges: deserializeParam(
          data['massges'],
          ParamType.String,
          false,
        ),
        idname: deserializeParam(
          data['idname'],
          ParamType.String,
          false,
        ),
        dollar: deserializeParam(
          data['dollar'],
          ParamType.int,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        images: deserializeParam(
          data['images'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RecentactivityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RecentactivityStruct &&
        img == other.img &&
        name == other.name &&
        date == other.date &&
        massges == other.massges &&
        idname == other.idname &&
        dollar == other.dollar &&
        id == other.id &&
        images == other.images;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([img, name, date, massges, idname, dollar, id, images]);
}

RecentactivityStruct createRecentactivityStruct({
  String? img,
  String? name,
  String? date,
  String? massges,
  String? idname,
  int? dollar,
  int? id,
  String? images,
}) =>
    RecentactivityStruct(
      img: img,
      name: name,
      date: date,
      massges: massges,
      idname: idname,
      dollar: dollar,
      id: id,
      images: images,
    );

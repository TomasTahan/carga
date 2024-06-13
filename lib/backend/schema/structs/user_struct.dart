// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? uid,
    String? mail,
    String? nombre,
  })  : _uid = uid,
        _mail = mail,
        _nombre = nombre;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "mail" field.
  String? _mail;
  String get mail => _mail ?? '';
  set mail(String? val) => _mail = val;

  bool hasMail() => _mail != null;

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        uid: data['uid'] as String?,
        mail: data['mail'] as String?,
        nombre: data['Nombre'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'uid': _uid,
        'mail': _mail,
        'Nombre': _nombre,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'mail': serializeParam(
          _mail,
          ParamType.String,
        ),
        'Nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        mail: deserializeParam(
          data['mail'],
          ParamType.String,
          false,
        ),
        nombre: deserializeParam(
          data['Nombre'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        uid == other.uid &&
        mail == other.mail &&
        nombre == other.nombre;
  }

  @override
  int get hashCode => const ListEquality().hash([uid, mail, nombre]);
}

UserStruct createUserStruct({
  String? uid,
  String? mail,
  String? nombre,
}) =>
    UserStruct(
      uid: uid,
      mail: mail,
      nombre: nombre,
    );

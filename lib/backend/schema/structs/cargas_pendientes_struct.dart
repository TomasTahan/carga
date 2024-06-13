// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CargasPendientesStruct extends BaseStruct {
  CargasPendientesStruct({
    List<String>? id,
    List<String>? createdAt,
    List<String>? userId,
    List<String>? nombreEmpresa,
    List<String>? descripcion,
    List<String>? paisDesde,
    List<String>? paisHacia,
    List<bool>? estado,
  })  : _id = id,
        _createdAt = createdAt,
        _userId = userId,
        _nombreEmpresa = nombreEmpresa,
        _descripcion = descripcion,
        _paisDesde = paisDesde,
        _paisHacia = paisHacia,
        _estado = estado;

  // "Id" field.
  List<String>? _id;
  List<String> get id => _id ?? const [];
  set id(List<String>? val) => _id = val;

  void updateId(Function(List<String>) updateFn) {
    updateFn(id ??= []);
  }

  bool hasId() => _id != null;

  // "CreatedAt" field.
  List<String>? _createdAt;
  List<String> get createdAt => _createdAt ?? const [];
  set createdAt(List<String>? val) => _createdAt = val;

  void updateCreatedAt(Function(List<String>) updateFn) {
    updateFn(createdAt ??= []);
  }

  bool hasCreatedAt() => _createdAt != null;

  // "UserId" field.
  List<String>? _userId;
  List<String> get userId => _userId ?? const [];
  set userId(List<String>? val) => _userId = val;

  void updateUserId(Function(List<String>) updateFn) {
    updateFn(userId ??= []);
  }

  bool hasUserId() => _userId != null;

  // "NombreEmpresa" field.
  List<String>? _nombreEmpresa;
  List<String> get nombreEmpresa => _nombreEmpresa ?? const [];
  set nombreEmpresa(List<String>? val) => _nombreEmpresa = val;

  void updateNombreEmpresa(Function(List<String>) updateFn) {
    updateFn(nombreEmpresa ??= []);
  }

  bool hasNombreEmpresa() => _nombreEmpresa != null;

  // "Descripcion" field.
  List<String>? _descripcion;
  List<String> get descripcion => _descripcion ?? const [];
  set descripcion(List<String>? val) => _descripcion = val;

  void updateDescripcion(Function(List<String>) updateFn) {
    updateFn(descripcion ??= []);
  }

  bool hasDescripcion() => _descripcion != null;

  // "PaisDesde" field.
  List<String>? _paisDesde;
  List<String> get paisDesde => _paisDesde ?? const [];
  set paisDesde(List<String>? val) => _paisDesde = val;

  void updatePaisDesde(Function(List<String>) updateFn) {
    updateFn(paisDesde ??= []);
  }

  bool hasPaisDesde() => _paisDesde != null;

  // "PaisHacia" field.
  List<String>? _paisHacia;
  List<String> get paisHacia => _paisHacia ?? const [];
  set paisHacia(List<String>? val) => _paisHacia = val;

  void updatePaisHacia(Function(List<String>) updateFn) {
    updateFn(paisHacia ??= []);
  }

  bool hasPaisHacia() => _paisHacia != null;

  // "Estado" field.
  List<bool>? _estado;
  List<bool> get estado => _estado ?? const [];
  set estado(List<bool>? val) => _estado = val;

  void updateEstado(Function(List<bool>) updateFn) {
    updateFn(estado ??= []);
  }

  bool hasEstado() => _estado != null;

  static CargasPendientesStruct fromMap(Map<String, dynamic> data) =>
      CargasPendientesStruct(
        id: getDataList(data['Id']),
        createdAt: getDataList(data['CreatedAt']),
        userId: getDataList(data['UserId']),
        nombreEmpresa: getDataList(data['NombreEmpresa']),
        descripcion: getDataList(data['Descripcion']),
        paisDesde: getDataList(data['PaisDesde']),
        paisHacia: getDataList(data['PaisHacia']),
        estado: getDataList(data['Estado']),
      );

  static CargasPendientesStruct? maybeFromMap(dynamic data) => data is Map
      ? CargasPendientesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'CreatedAt': _createdAt,
        'UserId': _userId,
        'NombreEmpresa': _nombreEmpresa,
        'Descripcion': _descripcion,
        'PaisDesde': _paisDesde,
        'PaisHacia': _paisHacia,
        'Estado': _estado,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Id': serializeParam(
          _id,
          ParamType.String,
          isList: true,
        ),
        'CreatedAt': serializeParam(
          _createdAt,
          ParamType.String,
          isList: true,
        ),
        'UserId': serializeParam(
          _userId,
          ParamType.String,
          isList: true,
        ),
        'NombreEmpresa': serializeParam(
          _nombreEmpresa,
          ParamType.String,
          isList: true,
        ),
        'Descripcion': serializeParam(
          _descripcion,
          ParamType.String,
          isList: true,
        ),
        'PaisDesde': serializeParam(
          _paisDesde,
          ParamType.String,
          isList: true,
        ),
        'PaisHacia': serializeParam(
          _paisHacia,
          ParamType.String,
          isList: true,
        ),
        'Estado': serializeParam(
          _estado,
          ParamType.bool,
          isList: true,
        ),
      }.withoutNulls;

  static CargasPendientesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CargasPendientesStruct(
        id: deserializeParam<String>(
          data['Id'],
          ParamType.String,
          true,
        ),
        createdAt: deserializeParam<String>(
          data['CreatedAt'],
          ParamType.String,
          true,
        ),
        userId: deserializeParam<String>(
          data['UserId'],
          ParamType.String,
          true,
        ),
        nombreEmpresa: deserializeParam<String>(
          data['NombreEmpresa'],
          ParamType.String,
          true,
        ),
        descripcion: deserializeParam<String>(
          data['Descripcion'],
          ParamType.String,
          true,
        ),
        paisDesde: deserializeParam<String>(
          data['PaisDesde'],
          ParamType.String,
          true,
        ),
        paisHacia: deserializeParam<String>(
          data['PaisHacia'],
          ParamType.String,
          true,
        ),
        estado: deserializeParam<bool>(
          data['Estado'],
          ParamType.bool,
          true,
        ),
      );

  @override
  String toString() => 'CargasPendientesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CargasPendientesStruct &&
        listEquality.equals(id, other.id) &&
        listEquality.equals(createdAt, other.createdAt) &&
        listEquality.equals(userId, other.userId) &&
        listEquality.equals(nombreEmpresa, other.nombreEmpresa) &&
        listEquality.equals(descripcion, other.descripcion) &&
        listEquality.equals(paisDesde, other.paisDesde) &&
        listEquality.equals(paisHacia, other.paisHacia) &&
        listEquality.equals(estado, other.estado);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        userId,
        nombreEmpresa,
        descripcion,
        paisDesde,
        paisHacia,
        estado
      ]);
}

CargasPendientesStruct createCargasPendientesStruct() =>
    CargasPendientesStruct();

import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start SupaAuth Group Code

class SupaAuthGroup {
  static String getBaseUrl({
    String? email = '',
    String? password = '',
  }) =>
      'https://dbqlxdxaqauvcqyabrbw.supabase.co/auth/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRicWx4ZHhhcWF1dmNxeWFicmJ3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM4MDI5NTAsImV4cCI6MjAxOTM3ODk1MH0.Eo5EAXt9ubWjHVR68z0XEaj5YnQ-u15V60zApO6JVZQ',
    'Content-Type': 'application/json',
  };
  static RegisterCall registerCall = RegisterCall();
  static LoginCall loginCall = LoginCall();
}

class RegisterCall {
  Future<ApiCallResponse> call({
    String? nombre = '',
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = SupaAuthGroup.getBaseUrl(
      email: email,
      password: password,
    );

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}",
  "data": {
    "nombre": "${nombre}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register',
      apiUrl: '${baseUrl}/signup',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRicWx4ZHhhcWF1dmNxeWFicmJ3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM4MDI5NTAsImV4cCI6MjAxOTM3ODk1MH0.Eo5EAXt9ubWjHVR68z0XEaj5YnQ-u15V60zApO6JVZQ',
        'Content-Type': 'application/json',
      },
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

  String? apiToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  int? apiExpiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expires_in''',
      ));
  int? apiExpiresAt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expires_at''',
      ));
  String? apiTokenRefresh(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.refresh_token''',
      ));
  String? apiUserID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  String? apiUserMail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  String? apiNombre(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.user_metadata.nombre''',
      ));
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = SupaAuthGroup.getBaseUrl(
      email: email,
      password: password,
    );

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${baseUrl}/token?grant_type=password',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRicWx4ZHhhcWF1dmNxeWFicmJ3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM4MDI5NTAsImV4cCI6MjAxOTM3ODk1MH0.Eo5EAXt9ubWjHVR68z0XEaj5YnQ-u15V60zApO6JVZQ',
        'Content-Type': 'application/json',
      },
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

  String? apiToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  String? apiTokenRefresh(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.refresh_token''',
      ));
  String? apiUserID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  String? apiUserMail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  int? apiExpiresAt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expires_at''',
      ));
  int? apiExpiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expires_in''',
      ));
  String? apiNombre(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.user_metadata.nombre''',
      ));
}

/// End SupaAuth Group Code

/// Start SupaCRUD Group Code

class SupaCRUDGroup {
  static String getBaseUrl() =>
      'https://dbqlxdxaqauvcqyabrbw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRicWx4ZHhhcWF1dmNxeWFicmJ3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM4MDI5NTAsImV4cCI6MjAxOTM3ODk1MH0.Eo5EAXt9ubWjHVR68z0XEaj5YnQ-u15V60zApO6JVZQ',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRicWx4ZHhhcWF1dmNxeWFicmJ3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM4MDI5NTAsImV4cCI6MjAxOTM3ODk1MH0.Eo5EAXt9ubWjHVR68z0XEaj5YnQ-u15V60zApO6JVZQ',
  };
  static GetCargasPendientesCall getCargasPendientesCall =
      GetCargasPendientesCall();
  static GetCargasCompletadasCall getCargasCompletadasCall =
      GetCargasCompletadasCall();
}

class GetCargasPendientesCall {
  Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    final baseUrl = SupaCRUDGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetCargasPendientes',
      apiUrl:
          '${baseUrl}cargas?estado=eq.false&user_id=eq.${userId}&select=*&order=created_at.desc',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRicWx4ZHhhcWF1dmNxeWFicmJ3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM4MDI5NTAsImV4cCI6MjAxOTM3ODk1MH0.Eo5EAXt9ubWjHVR68z0XEaj5YnQ-u15V60zApO6JVZQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRicWx4ZHhhcWF1dmNxeWFicmJ3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM4MDI5NTAsImV4cCI6MjAxOTM3ODk1MH0.Eo5EAXt9ubWjHVR68z0XEaj5YnQ-u15V60zApO6JVZQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? apiId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? apiCreatedAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? apiUserId(dynamic response) => (getJsonField(
        response,
        r'''$[:].user_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? apiNombreEmpresa(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre_empresa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? apiDescripcion(dynamic response) => (getJsonField(
        response,
        r'''$[:].descripcion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? apiPaisDesde(dynamic response) => (getJsonField(
        response,
        r'''$[:].pais_desde''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? apiPaisHacia(dynamic response) => (getJsonField(
        response,
        r'''$[:].pais_hacia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? apiEstado(dynamic response) => (getJsonField(
        response,
        r'''$[:].estado''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
}

class GetCargasCompletadasCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SupaCRUDGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetCargasCompletadas',
      apiUrl: '${baseUrl}cargas?estado=eq.true&select=*&order=created_at.desc',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRicWx4ZHhhcWF1dmNxeWFicmJ3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM4MDI5NTAsImV4cCI6MjAxOTM3ODk1MH0.Eo5EAXt9ubWjHVR68z0XEaj5YnQ-u15V60zApO6JVZQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRicWx4ZHhhcWF1dmNxeWFicmJ3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM4MDI5NTAsImV4cCI6MjAxOTM3ODk1MH0.Eo5EAXt9ubWjHVR68z0XEaj5YnQ-u15V60zApO6JVZQ',
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

/// End SupaCRUD Group Code

class TestCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'test',
      apiUrl: 'https://pokeapi.co/api/v2/ability/?limit=20&offset=20',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? apiTest(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].name''',
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

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

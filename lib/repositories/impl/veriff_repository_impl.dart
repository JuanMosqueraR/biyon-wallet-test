import 'dart:developer';

import 'package:code/data/veriff_session_request.dart';
import 'package:code/data/veriff_session_response.dart';
import 'package:code/env/env.dart';
import 'package:code/repositories/veriff_repository.dart';
import 'package:http/http.dart' as http;

class VeriffRepositoryImpl implements IVeriffRepository {
  static const String _createSessionURl = '/v1/sessions';

  @override
  Future<VeriffSessionResponse?> getSession(
      VeriffSessionRequest request) async {
    Map<String, String> header = {
      'Content-Type': 'application/json',
      'X-AUTH-CLIENT': Env.veriffXAuthClient,
    };
    try {
      final url = Uri.https(Env.veriffXBaseUrl, _createSessionURl);
      final response = await http.post(
        url,
        headers: header,
        body: request.toJson(),
      );
      inspect(response);
      if (response.statusCode == 201) {
        inspect(VeriffSessionResponse.fromJson(response.body));
        return VeriffSessionResponse.fromJson(response.body);
      } else {
        return null;
      }
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }
}

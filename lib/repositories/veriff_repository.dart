import 'package:code/data/veriff_session_request.dart';
import 'package:code/data/veriff_session_response.dart';

abstract class IVeriffRepository {
  Future<VeriffSessionResponse?> getSession(VeriffSessionRequest request);
}

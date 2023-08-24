import 'dart:convert';

class VeriffSessionResponse {
  String status;
  Verification verification;

  VeriffSessionResponse({
    required this.status,
    required this.verification,
  });

  factory VeriffSessionResponse.fromJson(String str) =>
      VeriffSessionResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VeriffSessionResponse.fromMap(Map<String, dynamic> json) =>
      VeriffSessionResponse(
        status: json['status'],
        verification: Verification.fromMap(json['verification']),
      );

  Map<String, dynamic> toMap() => {
        'status': status,
        'verification': verification.toMap(),
      };
}

class Verification {
  String id;
  String url;
  dynamic vendorData;
  String host;
  String status;
  String sessionToken;
  //TODO: set VendorData UserID and sessionId(id)

  Verification({
    required this.id,
    required this.url,
    this.vendorData,
    required this.host,
    required this.status,
    required this.sessionToken,
  });

  factory Verification.fromJson(String str) =>
      Verification.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Verification.fromMap(Map<String, dynamic> json) => Verification(
        id: json['id'],
        url: json['url'],
        vendorData: json['vendorData'],
        host: json['host'],
        status: json['status'],
        sessionToken: json['sessionToken'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'url': url,
        'vendorData': vendorData,
        'host': host,
        'status': status,
        'sessionToken': sessionToken,
      };
}

import 'dart:convert';

class VeriffSessionRequest {
  Verification verification;

  VeriffSessionRequest({
    required this.verification,
  });

  factory VeriffSessionRequest.fromJson(String str) =>
      VeriffSessionRequest.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VeriffSessionRequest.fromMap(Map<String, dynamic> json) =>
      VeriffSessionRequest(
        verification: Verification.fromMap(json['verification']),
      );

  Map<String, dynamic> toMap() => {
    'verification': verification.toMap(),
  };
}

class Verification {
  String? callback;
  Person? person;
  // VeriffDocument? document;

  Verification({
    this.callback,
    this.person,
    // this.document,
  });

  factory Verification.fromJson(String str) =>
      Verification.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Verification.fromMap(Map<String, dynamic> json) => Verification(
    callback: json['callback'],
    person: Person.fromMap(json['person']),
    // document: VeriffDocument.fromMap(json['document']),
  );

  Map<String, dynamic> toMap() => {
    'callback': callback,
    'person': person?.toMap(),
    // 'document': document?.toMap(),
  };
}

class VeriffDocument {
  String? type;
  String? country;

  VeriffDocument({
    this.type,
    this.country,
  });

  factory VeriffDocument.fromJson(String str) =>
      VeriffDocument.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VeriffDocument.fromMap(Map<String, dynamic> json) => VeriffDocument(
    type: json['type'],
    country: json['country'],
  );

  Map<String, dynamic> toMap() => {
    'type': type,
    'country': country,
  };
}

class Person {
  String? firstName;

  Person({
    this.firstName
  });

  factory Person.fromJson(String str) => Person.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Person.fromMap(Map<String, dynamic> json) => Person(
    firstName: json['firstName']
  );

  Map<String, dynamic> toMap() => {
    'firstName': firstName
  };
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TLSInfo {
  /// Returns a new [TLSInfo] instance.
  TLSInfo({
    this.trustRoot,
    this.certIssuerSubject,
    this.certIssuerPublicKey,
  });

  /// The root CA certificate(s) that are used to validate leaf TLS certificates.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trustRoot;

  /// The base64-url-safe-encoded raw subject bytes of the issuer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? certIssuerSubject;

  /// The base64-url-safe-encoded raw public key bytes of the issuer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? certIssuerPublicKey;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TLSInfo &&
          other.trustRoot == trustRoot &&
          other.certIssuerSubject == certIssuerSubject &&
          other.certIssuerPublicKey == certIssuerPublicKey;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (trustRoot == null ? 0 : trustRoot!.hashCode) +
      (certIssuerSubject == null ? 0 : certIssuerSubject!.hashCode) +
      (certIssuerPublicKey == null ? 0 : certIssuerPublicKey!.hashCode);

  @override
  String toString() =>
      'TLSInfo[trustRoot=$trustRoot, certIssuerSubject=$certIssuerSubject, certIssuerPublicKey=$certIssuerPublicKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.trustRoot != null) {
      json[r'TrustRoot'] = this.trustRoot;
    } else {
      json[r'TrustRoot'] = null;
    }
    if (this.certIssuerSubject != null) {
      json[r'CertIssuerSubject'] = this.certIssuerSubject;
    } else {
      json[r'CertIssuerSubject'] = null;
    }
    if (this.certIssuerPublicKey != null) {
      json[r'CertIssuerPublicKey'] = this.certIssuerPublicKey;
    } else {
      json[r'CertIssuerPublicKey'] = null;
    }
    return json;
  }

  /// Returns a new [TLSInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TLSInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TLSInfo[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TLSInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TLSInfo(
        trustRoot: mapValueOfType<String>(json, r'TrustRoot'),
        certIssuerSubject: mapValueOfType<String>(json, r'CertIssuerSubject'),
        certIssuerPublicKey:
            mapValueOfType<String>(json, r'CertIssuerPublicKey'),
      );
    }
    return null;
  }

  static List<TLSInfo> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TLSInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TLSInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TLSInfo> mapFromJson(dynamic json) {
    final map = <String, TLSInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TLSInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TLSInfo-objects as value to a dart map
  static Map<String, List<TLSInfo>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TLSInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TLSInfo.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}

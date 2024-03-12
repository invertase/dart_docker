//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class SwarmSpecCAConfig {
  /// Returns a new [SwarmSpecCAConfig] instance.
  SwarmSpecCAConfig({
    this.nodeCertExpiry,
    this.externalCAs = const [],
    this.signingCACert,
    this.signingCAKey,
    this.forceRotate,
  });

  /// The duration node certificates are issued for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nodeCertExpiry;

  /// Configuration for forwarding signing requests to an external certificate authority.
  List<SwarmSpecCAConfigExternalCAsInner> externalCAs;

  /// The desired signing CA certificate for all swarm node TLS leaf certificates, in PEM format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signingCACert;

  /// The desired signing CA key for all swarm node TLS leaf certificates, in PEM format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signingCAKey;

  /// An integer whose purpose is to force swarm to generate a new signing CA certificate and key, if none have been specified in `SigningCACert` and `SigningCAKey`
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? forceRotate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SwarmSpecCAConfig &&
          other.nodeCertExpiry == nodeCertExpiry &&
          _deepEquality.equals(other.externalCAs, externalCAs) &&
          other.signingCACert == signingCACert &&
          other.signingCAKey == signingCAKey &&
          other.forceRotate == forceRotate;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (nodeCertExpiry == null ? 0 : nodeCertExpiry!.hashCode) +
      (externalCAs.hashCode) +
      (signingCACert == null ? 0 : signingCACert!.hashCode) +
      (signingCAKey == null ? 0 : signingCAKey!.hashCode) +
      (forceRotate == null ? 0 : forceRotate!.hashCode);

  @override
  String toString() =>
      'SwarmSpecCAConfig[nodeCertExpiry=$nodeCertExpiry, externalCAs=$externalCAs, signingCACert=$signingCACert, signingCAKey=$signingCAKey, forceRotate=$forceRotate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.nodeCertExpiry != null) {
      json[r'NodeCertExpiry'] = this.nodeCertExpiry;
    } else {
      json[r'NodeCertExpiry'] = null;
    }
    json[r'ExternalCAs'] = this.externalCAs;
    if (this.signingCACert != null) {
      json[r'SigningCACert'] = this.signingCACert;
    } else {
      json[r'SigningCACert'] = null;
    }
    if (this.signingCAKey != null) {
      json[r'SigningCAKey'] = this.signingCAKey;
    } else {
      json[r'SigningCAKey'] = null;
    }
    if (this.forceRotate != null) {
      json[r'ForceRotate'] = this.forceRotate;
    } else {
      json[r'ForceRotate'] = null;
    }
    return json;
  }

  /// Returns a new [SwarmSpecCAConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SwarmSpecCAConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SwarmSpecCAConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SwarmSpecCAConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SwarmSpecCAConfig(
        nodeCertExpiry: mapValueOfType<int>(json, r'NodeCertExpiry'),
        externalCAs: SwarmSpecCAConfigExternalCAsInner.listFromJson(
            json[r'ExternalCAs']),
        signingCACert: mapValueOfType<String>(json, r'SigningCACert'),
        signingCAKey: mapValueOfType<String>(json, r'SigningCAKey'),
        forceRotate: mapValueOfType<int>(json, r'ForceRotate'),
      );
    }
    return null;
  }

  static List<SwarmSpecCAConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SwarmSpecCAConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SwarmSpecCAConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SwarmSpecCAConfig> mapFromJson(dynamic json) {
    final map = <String, SwarmSpecCAConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SwarmSpecCAConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SwarmSpecCAConfig-objects as value to a dart map
  static Map<String, List<SwarmSpecCAConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SwarmSpecCAConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SwarmSpecCAConfig.listFromJson(
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

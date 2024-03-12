//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class IPAMConfig {
  /// Returns a new [IPAMConfig] instance.
  IPAMConfig({
    this.subnet,
    this.iPRange,
    this.gateway,
    this.auxiliaryAddresses = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subnet;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iPRange;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gateway;

  Map<String, String> auxiliaryAddresses;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IPAMConfig &&
          other.subnet == subnet &&
          other.iPRange == iPRange &&
          other.gateway == gateway &&
          _deepEquality.equals(other.auxiliaryAddresses, auxiliaryAddresses);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (subnet == null ? 0 : subnet!.hashCode) +
      (iPRange == null ? 0 : iPRange!.hashCode) +
      (gateway == null ? 0 : gateway!.hashCode) +
      (auxiliaryAddresses.hashCode);

  @override
  String toString() =>
      'IPAMConfig[subnet=$subnet, iPRange=$iPRange, gateway=$gateway, auxiliaryAddresses=$auxiliaryAddresses]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.subnet != null) {
      json[r'Subnet'] = this.subnet;
    } else {
      json[r'Subnet'] = null;
    }
    if (this.iPRange != null) {
      json[r'IPRange'] = this.iPRange;
    } else {
      json[r'IPRange'] = null;
    }
    if (this.gateway != null) {
      json[r'Gateway'] = this.gateway;
    } else {
      json[r'Gateway'] = null;
    }
    json[r'AuxiliaryAddresses'] = this.auxiliaryAddresses;
    return json;
  }

  /// Returns a new [IPAMConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IPAMConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IPAMConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IPAMConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IPAMConfig(
        subnet: mapValueOfType<String>(json, r'Subnet'),
        iPRange: mapValueOfType<String>(json, r'IPRange'),
        gateway: mapValueOfType<String>(json, r'Gateway'),
        auxiliaryAddresses:
            mapCastOfType<String, String>(json, r'AuxiliaryAddresses') ??
                const {},
      );
    }
    return null;
  }

  static List<IPAMConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IPAMConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IPAMConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IPAMConfig> mapFromJson(dynamic json) {
    final map = <String, IPAMConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IPAMConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IPAMConfig-objects as value to a dart map
  static Map<String, List<IPAMConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IPAMConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IPAMConfig.listFromJson(
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

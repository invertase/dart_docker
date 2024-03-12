//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class IPAM {
  /// Returns a new [IPAM] instance.
  IPAM({
    this.driver = 'default',
    this.config = const [],
    this.options = const {},
  });

  /// Name of the IPAM driver to use.
  String driver;

  /// List of IPAM configuration options, specified as a map:  ``` {\"Subnet\": <CIDR>, \"IPRange\": <CIDR>, \"Gateway\": <IP address>, \"AuxAddress\": <device_name:IP address>} ```
  List<IPAMConfig> config;

  /// Driver-specific options, specified as a map.
  Map<String, String> options;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IPAM &&
          other.driver == driver &&
          _deepEquality.equals(other.config, config) &&
          _deepEquality.equals(other.options, options);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (driver.hashCode) + (config.hashCode) + (options.hashCode);

  @override
  String toString() => 'IPAM[driver=$driver, config=$config, options=$options]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Driver'] = this.driver;
    json[r'Config'] = this.config;
    json[r'Options'] = this.options;
    return json;
  }

  /// Returns a new [IPAM] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IPAM? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IPAM[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IPAM[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IPAM(
        driver: mapValueOfType<String>(json, r'Driver') ?? 'default',
        config: IPAMConfig.listFromJson(json[r'Config']),
        options: mapCastOfType<String, String>(json, r'Options') ?? const {},
      );
    }
    return null;
  }

  static List<IPAM> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IPAM>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IPAM.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IPAM> mapFromJson(dynamic json) {
    final map = <String, IPAM>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IPAM.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IPAM-objects as value to a dart map
  static Map<String, List<IPAM>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IPAM>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IPAM.listFromJson(
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

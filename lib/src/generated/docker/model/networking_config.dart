//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class NetworkingConfig {
  /// Returns a new [NetworkingConfig] instance.
  NetworkingConfig({
    this.endpointsConfig = const {},
  });

  /// A mapping of network name to endpoint configuration for that network. The endpoint configuration can be left empty to connect to that network with no particular endpoint configuration.
  Map<String, EndpointSettings> endpointsConfig;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetworkingConfig &&
          _deepEquality.equals(other.endpointsConfig, endpointsConfig);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (endpointsConfig.hashCode);

  @override
  String toString() => 'NetworkingConfig[endpointsConfig=$endpointsConfig]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'EndpointsConfig'] = this.endpointsConfig;
    return json;
  }

  /// Returns a new [NetworkingConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NetworkingConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "NetworkingConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "NetworkingConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NetworkingConfig(
        endpointsConfig: EndpointSettings.mapFromJson(json[r'EndpointsConfig']),
      );
    }
    return null;
  }

  static List<NetworkingConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NetworkingConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NetworkingConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NetworkingConfig> mapFromJson(dynamic json) {
    final map = <String, NetworkingConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NetworkingConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NetworkingConfig-objects as value to a dart map
  static Map<String, List<NetworkingConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NetworkingConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NetworkingConfig.listFromJson(
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

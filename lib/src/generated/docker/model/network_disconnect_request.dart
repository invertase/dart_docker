//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class NetworkDisconnectRequest {
  /// Returns a new [NetworkDisconnectRequest] instance.
  NetworkDisconnectRequest({
    this.container,
    this.force,
  });

  /// The ID or name of the container to disconnect from the network.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? container;

  /// Force the container to disconnect from the network.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? force;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetworkDisconnectRequest &&
          other.container == container &&
          other.force == force;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (container == null ? 0 : container!.hashCode) +
      (force == null ? 0 : force!.hashCode);

  @override
  String toString() =>
      'NetworkDisconnectRequest[container=$container, force=$force]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.container != null) {
      json[r'Container'] = this.container;
    } else {
      json[r'Container'] = null;
    }
    if (this.force != null) {
      json[r'Force'] = this.force;
    } else {
      json[r'Force'] = null;
    }
    return json;
  }

  /// Returns a new [NetworkDisconnectRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NetworkDisconnectRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "NetworkDisconnectRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "NetworkDisconnectRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NetworkDisconnectRequest(
        container: mapValueOfType<String>(json, r'Container'),
        force: mapValueOfType<bool>(json, r'Force'),
      );
    }
    return null;
  }

  static List<NetworkDisconnectRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NetworkDisconnectRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NetworkDisconnectRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NetworkDisconnectRequest> mapFromJson(dynamic json) {
    final map = <String, NetworkDisconnectRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NetworkDisconnectRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NetworkDisconnectRequest-objects as value to a dart map
  static Map<String, List<NetworkDisconnectRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NetworkDisconnectRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NetworkDisconnectRequest.listFromJson(
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

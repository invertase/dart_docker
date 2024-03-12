//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class NetworkPruneResponse {
  /// Returns a new [NetworkPruneResponse] instance.
  NetworkPruneResponse({
    this.networksDeleted = const [],
  });

  /// Networks that were deleted
  List<String> networksDeleted;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetworkPruneResponse &&
          _deepEquality.equals(other.networksDeleted, networksDeleted);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (networksDeleted.hashCode);

  @override
  String toString() => 'NetworkPruneResponse[networksDeleted=$networksDeleted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'NetworksDeleted'] = this.networksDeleted;
    return json;
  }

  /// Returns a new [NetworkPruneResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NetworkPruneResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "NetworkPruneResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "NetworkPruneResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NetworkPruneResponse(
        networksDeleted: json[r'NetworksDeleted'] is Iterable
            ? (json[r'NetworksDeleted'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<NetworkPruneResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NetworkPruneResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NetworkPruneResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NetworkPruneResponse> mapFromJson(dynamic json) {
    final map = <String, NetworkPruneResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NetworkPruneResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NetworkPruneResponse-objects as value to a dart map
  static Map<String, List<NetworkPruneResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NetworkPruneResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NetworkPruneResponse.listFromJson(
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class SwarmUnlockRequest {
  /// Returns a new [SwarmUnlockRequest] instance.
  SwarmUnlockRequest({
    this.unlockKey,
  });

  /// The swarm's unlock key.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unlockKey;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SwarmUnlockRequest && other.unlockKey == unlockKey;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (unlockKey == null ? 0 : unlockKey!.hashCode);

  @override
  String toString() => 'SwarmUnlockRequest[unlockKey=$unlockKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.unlockKey != null) {
      json[r'UnlockKey'] = this.unlockKey;
    } else {
      json[r'UnlockKey'] = null;
    }
    return json;
  }

  /// Returns a new [SwarmUnlockRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SwarmUnlockRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SwarmUnlockRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SwarmUnlockRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SwarmUnlockRequest(
        unlockKey: mapValueOfType<String>(json, r'UnlockKey'),
      );
    }
    return null;
  }

  static List<SwarmUnlockRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SwarmUnlockRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SwarmUnlockRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SwarmUnlockRequest> mapFromJson(dynamic json) {
    final map = <String, SwarmUnlockRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SwarmUnlockRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SwarmUnlockRequest-objects as value to a dart map
  static Map<String, List<SwarmUnlockRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SwarmUnlockRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SwarmUnlockRequest.listFromJson(
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class SwarmSpecEncryptionConfig {
  /// Returns a new [SwarmSpecEncryptionConfig] instance.
  SwarmSpecEncryptionConfig({
    this.autoLockManagers,
  });

  /// If set, generate a key and use it to lock data stored on the managers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? autoLockManagers;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SwarmSpecEncryptionConfig &&
          other.autoLockManagers == autoLockManagers;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (autoLockManagers == null ? 0 : autoLockManagers!.hashCode);

  @override
  String toString() =>
      'SwarmSpecEncryptionConfig[autoLockManagers=$autoLockManagers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.autoLockManagers != null) {
      json[r'AutoLockManagers'] = this.autoLockManagers;
    } else {
      json[r'AutoLockManagers'] = null;
    }
    return json;
  }

  /// Returns a new [SwarmSpecEncryptionConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SwarmSpecEncryptionConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SwarmSpecEncryptionConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SwarmSpecEncryptionConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SwarmSpecEncryptionConfig(
        autoLockManagers: mapValueOfType<bool>(json, r'AutoLockManagers'),
      );
    }
    return null;
  }

  static List<SwarmSpecEncryptionConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SwarmSpecEncryptionConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SwarmSpecEncryptionConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SwarmSpecEncryptionConfig> mapFromJson(dynamic json) {
    final map = <String, SwarmSpecEncryptionConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SwarmSpecEncryptionConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SwarmSpecEncryptionConfig-objects as value to a dart map
  static Map<String, List<SwarmSpecEncryptionConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SwarmSpecEncryptionConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SwarmSpecEncryptionConfig.listFromJson(
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

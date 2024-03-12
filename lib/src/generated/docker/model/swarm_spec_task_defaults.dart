//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class SwarmSpecTaskDefaults {
  /// Returns a new [SwarmSpecTaskDefaults] instance.
  SwarmSpecTaskDefaults({
    this.logDriver,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SwarmSpecTaskDefaultsLogDriver? logDriver;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SwarmSpecTaskDefaults && other.logDriver == logDriver;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (logDriver == null ? 0 : logDriver!.hashCode);

  @override
  String toString() => 'SwarmSpecTaskDefaults[logDriver=$logDriver]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.logDriver != null) {
      json[r'LogDriver'] = this.logDriver;
    } else {
      json[r'LogDriver'] = null;
    }
    return json;
  }

  /// Returns a new [SwarmSpecTaskDefaults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SwarmSpecTaskDefaults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SwarmSpecTaskDefaults[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SwarmSpecTaskDefaults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SwarmSpecTaskDefaults(
        logDriver: SwarmSpecTaskDefaultsLogDriver.fromJson(json[r'LogDriver']),
      );
    }
    return null;
  }

  static List<SwarmSpecTaskDefaults> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SwarmSpecTaskDefaults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SwarmSpecTaskDefaults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SwarmSpecTaskDefaults> mapFromJson(dynamic json) {
    final map = <String, SwarmSpecTaskDefaults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SwarmSpecTaskDefaults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SwarmSpecTaskDefaults-objects as value to a dart map
  static Map<String, List<SwarmSpecTaskDefaults>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SwarmSpecTaskDefaults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SwarmSpecTaskDefaults.listFromJson(
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

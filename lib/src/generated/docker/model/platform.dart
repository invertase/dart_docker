//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class Platform {
  /// Returns a new [Platform] instance.
  Platform({
    this.architecture,
    this.OS,
  });

  /// Architecture represents the hardware architecture (for example, `x86_64`).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? architecture;

  /// OS represents the Operating System (for example, `linux` or `windows`).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? OS;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Platform && other.architecture == architecture && other.OS == OS;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (architecture == null ? 0 : architecture!.hashCode) +
      (OS == null ? 0 : OS!.hashCode);

  @override
  String toString() => 'Platform[architecture=$architecture, OS=$OS]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.architecture != null) {
      json[r'Architecture'] = this.architecture;
    } else {
      json[r'Architecture'] = null;
    }
    if (this.OS != null) {
      json[r'OS'] = this.OS;
    } else {
      json[r'OS'] = null;
    }
    return json;
  }

  /// Returns a new [Platform] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Platform? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Platform[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Platform[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Platform(
        architecture: mapValueOfType<String>(json, r'Architecture'),
        OS: mapValueOfType<String>(json, r'OS'),
      );
    }
    return null;
  }

  static List<Platform> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Platform>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Platform.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Platform> mapFromJson(dynamic json) {
    final map = <String, Platform>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Platform.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Platform-objects as value to a dart map
  static Map<String, List<Platform>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Platform>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Platform.listFromJson(
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

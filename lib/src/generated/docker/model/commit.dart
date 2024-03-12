//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class Commit {
  /// Returns a new [Commit] instance.
  Commit({
    this.ID,
    this.expected,
  });

  /// Actual commit ID of external tool.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ID;

  /// Commit ID of external tool expected by dockerd as set at build time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expected;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Commit && other.ID == ID && other.expected == expected;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (ID == null ? 0 : ID!.hashCode) +
      (expected == null ? 0 : expected!.hashCode);

  @override
  String toString() => 'Commit[ID=$ID, expected=$expected]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ID != null) {
      json[r'ID'] = this.ID;
    } else {
      json[r'ID'] = null;
    }
    if (this.expected != null) {
      json[r'Expected'] = this.expected;
    } else {
      json[r'Expected'] = null;
    }
    return json;
  }

  /// Returns a new [Commit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Commit? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Commit[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Commit[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Commit(
        ID: mapValueOfType<String>(json, r'ID'),
        expected: mapValueOfType<String>(json, r'Expected'),
      );
    }
    return null;
  }

  static List<Commit> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Commit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Commit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Commit> mapFromJson(dynamic json) {
    final map = <String, Commit>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Commit.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Commit-objects as value to a dart map
  static Map<String, List<Commit>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Commit>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Commit.listFromJson(
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

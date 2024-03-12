//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class JoinTokens {
  /// Returns a new [JoinTokens] instance.
  JoinTokens({
    this.worker,
    this.manager,
  });

  /// The token workers can use to join the swarm.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? worker;

  /// The token managers can use to join the swarm.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? manager;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JoinTokens && other.worker == worker && other.manager == manager;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (worker == null ? 0 : worker!.hashCode) +
      (manager == null ? 0 : manager!.hashCode);

  @override
  String toString() => 'JoinTokens[worker=$worker, manager=$manager]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.worker != null) {
      json[r'Worker'] = this.worker;
    } else {
      json[r'Worker'] = null;
    }
    if (this.manager != null) {
      json[r'Manager'] = this.manager;
    } else {
      json[r'Manager'] = null;
    }
    return json;
  }

  /// Returns a new [JoinTokens] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JoinTokens? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "JoinTokens[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "JoinTokens[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JoinTokens(
        worker: mapValueOfType<String>(json, r'Worker'),
        manager: mapValueOfType<String>(json, r'Manager'),
      );
    }
    return null;
  }

  static List<JoinTokens> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <JoinTokens>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JoinTokens.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JoinTokens> mapFromJson(dynamic json) {
    final map = <String, JoinTokens>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JoinTokens.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JoinTokens-objects as value to a dart map
  static Map<String, List<JoinTokens>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<JoinTokens>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JoinTokens.listFromJson(
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

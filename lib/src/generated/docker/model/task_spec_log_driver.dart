//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TaskSpecLogDriver {
  /// Returns a new [TaskSpecLogDriver] instance.
  TaskSpecLogDriver({
    this.name,
    this.options = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  Map<String, String> options;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskSpecLogDriver &&
          other.name == name &&
          _deepEquality.equals(other.options, options);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) + (options.hashCode);

  @override
  String toString() => 'TaskSpecLogDriver[name=$name, options=$options]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    json[r'Options'] = this.options;
    return json;
  }

  /// Returns a new [TaskSpecLogDriver] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskSpecLogDriver? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TaskSpecLogDriver[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TaskSpecLogDriver[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskSpecLogDriver(
        name: mapValueOfType<String>(json, r'Name'),
        options: mapCastOfType<String, String>(json, r'Options') ?? const {},
      );
    }
    return null;
  }

  static List<TaskSpecLogDriver> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskSpecLogDriver>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskSpecLogDriver.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskSpecLogDriver> mapFromJson(dynamic json) {
    final map = <String, TaskSpecLogDriver>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskSpecLogDriver.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskSpecLogDriver-objects as value to a dart map
  static Map<String, List<TaskSpecLogDriver>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TaskSpecLogDriver>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskSpecLogDriver.listFromJson(
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

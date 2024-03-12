//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TaskSpecPlacementPreferencesInnerSpread {
  /// Returns a new [TaskSpecPlacementPreferencesInnerSpread] instance.
  TaskSpecPlacementPreferencesInnerSpread({
    this.spreadDescriptor,
  });

  /// label descriptor, such as `engine.labels.az`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spreadDescriptor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskSpecPlacementPreferencesInnerSpread &&
          other.spreadDescriptor == spreadDescriptor;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (spreadDescriptor == null ? 0 : spreadDescriptor!.hashCode);

  @override
  String toString() =>
      'TaskSpecPlacementPreferencesInnerSpread[spreadDescriptor=$spreadDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.spreadDescriptor != null) {
      json[r'SpreadDescriptor'] = this.spreadDescriptor;
    } else {
      json[r'SpreadDescriptor'] = null;
    }
    return json;
  }

  /// Returns a new [TaskSpecPlacementPreferencesInnerSpread] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskSpecPlacementPreferencesInnerSpread? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TaskSpecPlacementPreferencesInnerSpread[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TaskSpecPlacementPreferencesInnerSpread[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskSpecPlacementPreferencesInnerSpread(
        spreadDescriptor: mapValueOfType<String>(json, r'SpreadDescriptor'),
      );
    }
    return null;
  }

  static List<TaskSpecPlacementPreferencesInnerSpread> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskSpecPlacementPreferencesInnerSpread>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskSpecPlacementPreferencesInnerSpread.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskSpecPlacementPreferencesInnerSpread> mapFromJson(
      dynamic json) {
    final map = <String, TaskSpecPlacementPreferencesInnerSpread>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            TaskSpecPlacementPreferencesInnerSpread.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskSpecPlacementPreferencesInnerSpread-objects as value to a dart map
  static Map<String, List<TaskSpecPlacementPreferencesInnerSpread>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TaskSpecPlacementPreferencesInnerSpread>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskSpecPlacementPreferencesInnerSpread.listFromJson(
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

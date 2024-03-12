//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TaskSpecResources {
  /// Returns a new [TaskSpecResources] instance.
  TaskSpecResources({
    this.limits,
    this.reservations,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Limit? limits;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ResourceObject? reservations;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskSpecResources &&
          other.limits == limits &&
          other.reservations == reservations;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (limits == null ? 0 : limits!.hashCode) +
      (reservations == null ? 0 : reservations!.hashCode);

  @override
  String toString() =>
      'TaskSpecResources[limits=$limits, reservations=$reservations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.limits != null) {
      json[r'Limits'] = this.limits;
    } else {
      json[r'Limits'] = null;
    }
    if (this.reservations != null) {
      json[r'Reservations'] = this.reservations;
    } else {
      json[r'Reservations'] = null;
    }
    return json;
  }

  /// Returns a new [TaskSpecResources] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskSpecResources? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TaskSpecResources[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TaskSpecResources[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskSpecResources(
        limits: Limit.fromJson(json[r'Limits']),
        reservations: ResourceObject.fromJson(json[r'Reservations']),
      );
    }
    return null;
  }

  static List<TaskSpecResources> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskSpecResources>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskSpecResources.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskSpecResources> mapFromJson(dynamic json) {
    final map = <String, TaskSpecResources>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskSpecResources.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskSpecResources-objects as value to a dart map
  static Map<String, List<TaskSpecResources>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TaskSpecResources>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskSpecResources.listFromJson(
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

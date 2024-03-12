//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TaskSpecContainerSpecPrivilegesSELinuxContext {
  /// Returns a new [TaskSpecContainerSpecPrivilegesSELinuxContext] instance.
  TaskSpecContainerSpecPrivilegesSELinuxContext({
    this.disable,
    this.user,
    this.role,
    this.type,
    this.level,
  });

  /// Disable SELinux
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disable;

  /// SELinux user label
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  /// SELinux role label
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? role;

  /// SELinux type label
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// SELinux level label
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? level;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskSpecContainerSpecPrivilegesSELinuxContext &&
          other.disable == disable &&
          other.user == user &&
          other.role == role &&
          other.type == type &&
          other.level == level;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (disable == null ? 0 : disable!.hashCode) +
      (user == null ? 0 : user!.hashCode) +
      (role == null ? 0 : role!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (level == null ? 0 : level!.hashCode);

  @override
  String toString() =>
      'TaskSpecContainerSpecPrivilegesSELinuxContext[disable=$disable, user=$user, role=$role, type=$type, level=$level]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.disable != null) {
      json[r'Disable'] = this.disable;
    } else {
      json[r'Disable'] = null;
    }
    if (this.user != null) {
      json[r'User'] = this.user;
    } else {
      json[r'User'] = null;
    }
    if (this.role != null) {
      json[r'Role'] = this.role;
    } else {
      json[r'Role'] = null;
    }
    if (this.type != null) {
      json[r'Type'] = this.type;
    } else {
      json[r'Type'] = null;
    }
    if (this.level != null) {
      json[r'Level'] = this.level;
    } else {
      json[r'Level'] = null;
    }
    return json;
  }

  /// Returns a new [TaskSpecContainerSpecPrivilegesSELinuxContext] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskSpecContainerSpecPrivilegesSELinuxContext? fromJson(
      dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TaskSpecContainerSpecPrivilegesSELinuxContext[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TaskSpecContainerSpecPrivilegesSELinuxContext[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskSpecContainerSpecPrivilegesSELinuxContext(
        disable: mapValueOfType<bool>(json, r'Disable'),
        user: mapValueOfType<String>(json, r'User'),
        role: mapValueOfType<String>(json, r'Role'),
        type: mapValueOfType<String>(json, r'Type'),
        level: mapValueOfType<String>(json, r'Level'),
      );
    }
    return null;
  }

  static List<TaskSpecContainerSpecPrivilegesSELinuxContext> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskSpecContainerSpecPrivilegesSELinuxContext>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value =
            TaskSpecContainerSpecPrivilegesSELinuxContext.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskSpecContainerSpecPrivilegesSELinuxContext> mapFromJson(
      dynamic json) {
    final map = <String, TaskSpecContainerSpecPrivilegesSELinuxContext>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            TaskSpecContainerSpecPrivilegesSELinuxContext.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskSpecContainerSpecPrivilegesSELinuxContext-objects as value to a dart map
  static Map<String, List<TaskSpecContainerSpecPrivilegesSELinuxContext>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TaskSpecContainerSpecPrivilegesSELinuxContext>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] =
            TaskSpecContainerSpecPrivilegesSELinuxContext.listFromJson(
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

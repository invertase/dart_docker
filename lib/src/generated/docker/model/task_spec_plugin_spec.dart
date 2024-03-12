//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TaskSpecPluginSpec {
  /// Returns a new [TaskSpecPluginSpec] instance.
  TaskSpecPluginSpec({
    this.name,
    this.remote,
    this.disabled,
    this.pluginPrivilege = const [],
  });

  /// The name or 'alias' to use for the plugin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The plugin image reference to use.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? remote;

  /// Disable the plugin once scheduled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disabled;

  List<PluginPrivilege> pluginPrivilege;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskSpecPluginSpec &&
          other.name == name &&
          other.remote == remote &&
          other.disabled == disabled &&
          _deepEquality.equals(other.pluginPrivilege, pluginPrivilege);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) +
      (remote == null ? 0 : remote!.hashCode) +
      (disabled == null ? 0 : disabled!.hashCode) +
      (pluginPrivilege.hashCode);

  @override
  String toString() =>
      'TaskSpecPluginSpec[name=$name, remote=$remote, disabled=$disabled, pluginPrivilege=$pluginPrivilege]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    if (this.remote != null) {
      json[r'Remote'] = this.remote;
    } else {
      json[r'Remote'] = null;
    }
    if (this.disabled != null) {
      json[r'Disabled'] = this.disabled;
    } else {
      json[r'Disabled'] = null;
    }
    json[r'PluginPrivilege'] = this.pluginPrivilege;
    return json;
  }

  /// Returns a new [TaskSpecPluginSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskSpecPluginSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TaskSpecPluginSpec[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TaskSpecPluginSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskSpecPluginSpec(
        name: mapValueOfType<String>(json, r'Name'),
        remote: mapValueOfType<String>(json, r'Remote'),
        disabled: mapValueOfType<bool>(json, r'Disabled'),
        pluginPrivilege: PluginPrivilege.listFromJson(json[r'PluginPrivilege']),
      );
    }
    return null;
  }

  static List<TaskSpecPluginSpec> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskSpecPluginSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskSpecPluginSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskSpecPluginSpec> mapFromJson(dynamic json) {
    final map = <String, TaskSpecPluginSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskSpecPluginSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskSpecPluginSpec-objects as value to a dart map
  static Map<String, List<TaskSpecPluginSpec>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TaskSpecPluginSpec>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskSpecPluginSpec.listFromJson(
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

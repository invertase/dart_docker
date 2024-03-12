//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TaskSpecContainerSpecConfigsInner {
  /// Returns a new [TaskSpecContainerSpecConfigsInner] instance.
  TaskSpecContainerSpecConfigsInner({
    this.file,
    this.runtime,
    this.configID,
    this.configName,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskSpecContainerSpecConfigsInnerFile? file;

  /// Runtime represents a target that is not mounted into the container but is used by the task  <p><br /><p>  > **Note**: `Configs.File` and `Configs.Runtime` are mutually > exclusive
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? runtime;

  /// ConfigID represents the ID of the specific config that we're referencing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? configID;

  /// ConfigName is the name of the config that this references, but this is just provided for lookup/display purposes. The config in the reference will be identified by its ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? configName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskSpecContainerSpecConfigsInner &&
          other.file == file &&
          other.runtime == runtime &&
          other.configID == configID &&
          other.configName == configName;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (file == null ? 0 : file!.hashCode) +
      (runtime == null ? 0 : runtime!.hashCode) +
      (configID == null ? 0 : configID!.hashCode) +
      (configName == null ? 0 : configName!.hashCode);

  @override
  String toString() =>
      'TaskSpecContainerSpecConfigsInner[file=$file, runtime=$runtime, configID=$configID, configName=$configName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.file != null) {
      json[r'File'] = this.file;
    } else {
      json[r'File'] = null;
    }
    if (this.runtime != null) {
      json[r'Runtime'] = this.runtime;
    } else {
      json[r'Runtime'] = null;
    }
    if (this.configID != null) {
      json[r'ConfigID'] = this.configID;
    } else {
      json[r'ConfigID'] = null;
    }
    if (this.configName != null) {
      json[r'ConfigName'] = this.configName;
    } else {
      json[r'ConfigName'] = null;
    }
    return json;
  }

  /// Returns a new [TaskSpecContainerSpecConfigsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskSpecContainerSpecConfigsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TaskSpecContainerSpecConfigsInner[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TaskSpecContainerSpecConfigsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskSpecContainerSpecConfigsInner(
        file: TaskSpecContainerSpecConfigsInnerFile.fromJson(json[r'File']),
        runtime: mapValueOfType<Object>(json, r'Runtime'),
        configID: mapValueOfType<String>(json, r'ConfigID'),
        configName: mapValueOfType<String>(json, r'ConfigName'),
      );
    }
    return null;
  }

  static List<TaskSpecContainerSpecConfigsInner> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskSpecContainerSpecConfigsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskSpecContainerSpecConfigsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskSpecContainerSpecConfigsInner> mapFromJson(
      dynamic json) {
    final map = <String, TaskSpecContainerSpecConfigsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskSpecContainerSpecConfigsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskSpecContainerSpecConfigsInner-objects as value to a dart map
  static Map<String, List<TaskSpecContainerSpecConfigsInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TaskSpecContainerSpecConfigsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskSpecContainerSpecConfigsInner.listFromJson(
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

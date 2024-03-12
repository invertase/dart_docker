//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TaskSpecContainerSpecSecretsInnerFile {
  /// Returns a new [TaskSpecContainerSpecSecretsInnerFile] instance.
  TaskSpecContainerSpecSecretsInnerFile({
    this.name,
    this.UID,
    this.GID,
    this.mode,
  });

  /// Name represents the final filename in the filesystem.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// UID represents the file UID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? UID;

  /// GID represents the file GID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? GID;

  /// Mode represents the FileMode of the file.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskSpecContainerSpecSecretsInnerFile &&
          other.name == name &&
          other.UID == UID &&
          other.GID == GID &&
          other.mode == mode;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) +
      (UID == null ? 0 : UID!.hashCode) +
      (GID == null ? 0 : GID!.hashCode) +
      (mode == null ? 0 : mode!.hashCode);

  @override
  String toString() =>
      'TaskSpecContainerSpecSecretsInnerFile[name=$name, UID=$UID, GID=$GID, mode=$mode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    if (this.UID != null) {
      json[r'UID'] = this.UID;
    } else {
      json[r'UID'] = null;
    }
    if (this.GID != null) {
      json[r'GID'] = this.GID;
    } else {
      json[r'GID'] = null;
    }
    if (this.mode != null) {
      json[r'Mode'] = this.mode;
    } else {
      json[r'Mode'] = null;
    }
    return json;
  }

  /// Returns a new [TaskSpecContainerSpecSecretsInnerFile] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskSpecContainerSpecSecretsInnerFile? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TaskSpecContainerSpecSecretsInnerFile[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TaskSpecContainerSpecSecretsInnerFile[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskSpecContainerSpecSecretsInnerFile(
        name: mapValueOfType<String>(json, r'Name'),
        UID: mapValueOfType<String>(json, r'UID'),
        GID: mapValueOfType<String>(json, r'GID'),
        mode: mapValueOfType<int>(json, r'Mode'),
      );
    }
    return null;
  }

  static List<TaskSpecContainerSpecSecretsInnerFile> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskSpecContainerSpecSecretsInnerFile>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskSpecContainerSpecSecretsInnerFile.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskSpecContainerSpecSecretsInnerFile> mapFromJson(
      dynamic json) {
    final map = <String, TaskSpecContainerSpecSecretsInnerFile>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            TaskSpecContainerSpecSecretsInnerFile.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskSpecContainerSpecSecretsInnerFile-objects as value to a dart map
  static Map<String, List<TaskSpecContainerSpecSecretsInnerFile>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TaskSpecContainerSpecSecretsInnerFile>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskSpecContainerSpecSecretsInnerFile.listFromJson(
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

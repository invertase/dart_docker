//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TaskSpecContainerSpecSecretsInner {
  /// Returns a new [TaskSpecContainerSpecSecretsInner] instance.
  TaskSpecContainerSpecSecretsInner({
    this.file,
    this.secretID,
    this.secretName,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskSpecContainerSpecSecretsInnerFile? file;

  /// SecretID represents the ID of the specific secret that we're referencing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secretID;

  /// SecretName is the name of the secret that this references, but this is just provided for lookup/display purposes. The secret in the reference will be identified by its ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secretName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskSpecContainerSpecSecretsInner &&
          other.file == file &&
          other.secretID == secretID &&
          other.secretName == secretName;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (file == null ? 0 : file!.hashCode) +
      (secretID == null ? 0 : secretID!.hashCode) +
      (secretName == null ? 0 : secretName!.hashCode);

  @override
  String toString() =>
      'TaskSpecContainerSpecSecretsInner[file=$file, secretID=$secretID, secretName=$secretName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.file != null) {
      json[r'File'] = this.file;
    } else {
      json[r'File'] = null;
    }
    if (this.secretID != null) {
      json[r'SecretID'] = this.secretID;
    } else {
      json[r'SecretID'] = null;
    }
    if (this.secretName != null) {
      json[r'SecretName'] = this.secretName;
    } else {
      json[r'SecretName'] = null;
    }
    return json;
  }

  /// Returns a new [TaskSpecContainerSpecSecretsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskSpecContainerSpecSecretsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TaskSpecContainerSpecSecretsInner[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TaskSpecContainerSpecSecretsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskSpecContainerSpecSecretsInner(
        file: TaskSpecContainerSpecSecretsInnerFile.fromJson(json[r'File']),
        secretID: mapValueOfType<String>(json, r'SecretID'),
        secretName: mapValueOfType<String>(json, r'SecretName'),
      );
    }
    return null;
  }

  static List<TaskSpecContainerSpecSecretsInner> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskSpecContainerSpecSecretsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskSpecContainerSpecSecretsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskSpecContainerSpecSecretsInner> mapFromJson(
      dynamic json) {
    final map = <String, TaskSpecContainerSpecSecretsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskSpecContainerSpecSecretsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskSpecContainerSpecSecretsInner-objects as value to a dart map
  static Map<String, List<TaskSpecContainerSpecSecretsInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TaskSpecContainerSpecSecretsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskSpecContainerSpecSecretsInner.listFromJson(
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

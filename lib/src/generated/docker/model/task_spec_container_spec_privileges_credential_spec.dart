//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TaskSpecContainerSpecPrivilegesCredentialSpec {
  /// Returns a new [TaskSpecContainerSpecPrivilegesCredentialSpec] instance.
  TaskSpecContainerSpecPrivilegesCredentialSpec({
    this.config,
    this.file,
    this.registry,
  });

  /// Load credential spec from a Swarm Config with the given ID. The specified config must also be present in the Configs field with the Runtime property set.  <p><br /></p>   > **Note**: `CredentialSpec.File`, `CredentialSpec.Registry`, > and `CredentialSpec.Config` are mutually exclusive.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? config;

  /// Load credential spec from this file. The file is read by the daemon, and must be present in the `CredentialSpecs` subdirectory in the docker data directory, which defaults to `C:\\ProgramData\\Docker\\` on Windows.  For example, specifying `spec.json` loads `C:\\ProgramData\\Docker\\CredentialSpecs\\spec.json`.  <p><br /></p>  > **Note**: `CredentialSpec.File`, `CredentialSpec.Registry`, > and `CredentialSpec.Config` are mutually exclusive.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? file;

  /// Load credential spec from this value in the Windows registry. The specified registry value must be located in:  `HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Virtualization\\Containers\\CredentialSpecs`  <p><br /></p>   > **Note**: `CredentialSpec.File`, `CredentialSpec.Registry`, > and `CredentialSpec.Config` are mutually exclusive.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? registry;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskSpecContainerSpecPrivilegesCredentialSpec &&
          other.config == config &&
          other.file == file &&
          other.registry == registry;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (config == null ? 0 : config!.hashCode) +
      (file == null ? 0 : file!.hashCode) +
      (registry == null ? 0 : registry!.hashCode);

  @override
  String toString() =>
      'TaskSpecContainerSpecPrivilegesCredentialSpec[config=$config, file=$file, registry=$registry]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.config != null) {
      json[r'Config'] = this.config;
    } else {
      json[r'Config'] = null;
    }
    if (this.file != null) {
      json[r'File'] = this.file;
    } else {
      json[r'File'] = null;
    }
    if (this.registry != null) {
      json[r'Registry'] = this.registry;
    } else {
      json[r'Registry'] = null;
    }
    return json;
  }

  /// Returns a new [TaskSpecContainerSpecPrivilegesCredentialSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskSpecContainerSpecPrivilegesCredentialSpec? fromJson(
      dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TaskSpecContainerSpecPrivilegesCredentialSpec[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TaskSpecContainerSpecPrivilegesCredentialSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskSpecContainerSpecPrivilegesCredentialSpec(
        config: mapValueOfType<String>(json, r'Config'),
        file: mapValueOfType<String>(json, r'File'),
        registry: mapValueOfType<String>(json, r'Registry'),
      );
    }
    return null;
  }

  static List<TaskSpecContainerSpecPrivilegesCredentialSpec> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskSpecContainerSpecPrivilegesCredentialSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value =
            TaskSpecContainerSpecPrivilegesCredentialSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskSpecContainerSpecPrivilegesCredentialSpec> mapFromJson(
      dynamic json) {
    final map = <String, TaskSpecContainerSpecPrivilegesCredentialSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            TaskSpecContainerSpecPrivilegesCredentialSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskSpecContainerSpecPrivilegesCredentialSpec-objects as value to a dart map
  static Map<String, List<TaskSpecContainerSpecPrivilegesCredentialSpec>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TaskSpecContainerSpecPrivilegesCredentialSpec>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] =
            TaskSpecContainerSpecPrivilegesCredentialSpec.listFromJson(
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

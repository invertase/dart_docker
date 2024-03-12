//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TaskSpecContainerSpecPrivileges {
  /// Returns a new [TaskSpecContainerSpecPrivileges] instance.
  TaskSpecContainerSpecPrivileges({
    this.credentialSpec,
    this.sELinuxContext,
    this.seccomp,
    this.appArmor,
    this.noNewPrivileges,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskSpecContainerSpecPrivilegesCredentialSpec? credentialSpec;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskSpecContainerSpecPrivilegesSELinuxContext? sELinuxContext;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskSpecContainerSpecPrivilegesSeccomp? seccomp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskSpecContainerSpecPrivilegesAppArmor? appArmor;

  /// Configuration of the no_new_privs bit in the container
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? noNewPrivileges;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskSpecContainerSpecPrivileges &&
          other.credentialSpec == credentialSpec &&
          other.sELinuxContext == sELinuxContext &&
          other.seccomp == seccomp &&
          other.appArmor == appArmor &&
          other.noNewPrivileges == noNewPrivileges;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (credentialSpec == null ? 0 : credentialSpec!.hashCode) +
      (sELinuxContext == null ? 0 : sELinuxContext!.hashCode) +
      (seccomp == null ? 0 : seccomp!.hashCode) +
      (appArmor == null ? 0 : appArmor!.hashCode) +
      (noNewPrivileges == null ? 0 : noNewPrivileges!.hashCode);

  @override
  String toString() =>
      'TaskSpecContainerSpecPrivileges[credentialSpec=$credentialSpec, sELinuxContext=$sELinuxContext, seccomp=$seccomp, appArmor=$appArmor, noNewPrivileges=$noNewPrivileges]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.credentialSpec != null) {
      json[r'CredentialSpec'] = this.credentialSpec;
    } else {
      json[r'CredentialSpec'] = null;
    }
    if (this.sELinuxContext != null) {
      json[r'SELinuxContext'] = this.sELinuxContext;
    } else {
      json[r'SELinuxContext'] = null;
    }
    if (this.seccomp != null) {
      json[r'Seccomp'] = this.seccomp;
    } else {
      json[r'Seccomp'] = null;
    }
    if (this.appArmor != null) {
      json[r'AppArmor'] = this.appArmor;
    } else {
      json[r'AppArmor'] = null;
    }
    if (this.noNewPrivileges != null) {
      json[r'NoNewPrivileges'] = this.noNewPrivileges;
    } else {
      json[r'NoNewPrivileges'] = null;
    }
    return json;
  }

  /// Returns a new [TaskSpecContainerSpecPrivileges] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskSpecContainerSpecPrivileges? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TaskSpecContainerSpecPrivileges[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TaskSpecContainerSpecPrivileges[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskSpecContainerSpecPrivileges(
        credentialSpec: TaskSpecContainerSpecPrivilegesCredentialSpec.fromJson(
            json[r'CredentialSpec']),
        sELinuxContext: TaskSpecContainerSpecPrivilegesSELinuxContext.fromJson(
            json[r'SELinuxContext']),
        seccomp:
            TaskSpecContainerSpecPrivilegesSeccomp.fromJson(json[r'Seccomp']),
        appArmor:
            TaskSpecContainerSpecPrivilegesAppArmor.fromJson(json[r'AppArmor']),
        noNewPrivileges: mapValueOfType<bool>(json, r'NoNewPrivileges'),
      );
    }
    return null;
  }

  static List<TaskSpecContainerSpecPrivileges> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskSpecContainerSpecPrivileges>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskSpecContainerSpecPrivileges.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskSpecContainerSpecPrivileges> mapFromJson(
      dynamic json) {
    final map = <String, TaskSpecContainerSpecPrivileges>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskSpecContainerSpecPrivileges.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskSpecContainerSpecPrivileges-objects as value to a dart map
  static Map<String, List<TaskSpecContainerSpecPrivileges>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TaskSpecContainerSpecPrivileges>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskSpecContainerSpecPrivileges.listFromJson(
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

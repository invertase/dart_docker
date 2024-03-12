//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ExecInspectResponse {
  /// Returns a new [ExecInspectResponse] instance.
  ExecInspectResponse({
    this.canRemove,
    this.detachKeys,
    this.ID,
    this.running,
    this.exitCode,
    this.processConfig,
    this.openStdin,
    this.openStderr,
    this.openStdout,
    this.containerID,
    this.pid,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canRemove;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? detachKeys;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? running;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? exitCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProcessConfig? processConfig;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? openStdin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? openStderr;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? openStdout;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? containerID;

  /// The system process ID for the exec process.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pid;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExecInspectResponse &&
          other.canRemove == canRemove &&
          other.detachKeys == detachKeys &&
          other.ID == ID &&
          other.running == running &&
          other.exitCode == exitCode &&
          other.processConfig == processConfig &&
          other.openStdin == openStdin &&
          other.openStderr == openStderr &&
          other.openStdout == openStdout &&
          other.containerID == containerID &&
          other.pid == pid;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (canRemove == null ? 0 : canRemove!.hashCode) +
      (detachKeys == null ? 0 : detachKeys!.hashCode) +
      (ID == null ? 0 : ID!.hashCode) +
      (running == null ? 0 : running!.hashCode) +
      (exitCode == null ? 0 : exitCode!.hashCode) +
      (processConfig == null ? 0 : processConfig!.hashCode) +
      (openStdin == null ? 0 : openStdin!.hashCode) +
      (openStderr == null ? 0 : openStderr!.hashCode) +
      (openStdout == null ? 0 : openStdout!.hashCode) +
      (containerID == null ? 0 : containerID!.hashCode) +
      (pid == null ? 0 : pid!.hashCode);

  @override
  String toString() =>
      'ExecInspectResponse[canRemove=$canRemove, detachKeys=$detachKeys, ID=$ID, running=$running, exitCode=$exitCode, processConfig=$processConfig, openStdin=$openStdin, openStderr=$openStderr, openStdout=$openStdout, containerID=$containerID, pid=$pid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.canRemove != null) {
      json[r'CanRemove'] = this.canRemove;
    } else {
      json[r'CanRemove'] = null;
    }
    if (this.detachKeys != null) {
      json[r'DetachKeys'] = this.detachKeys;
    } else {
      json[r'DetachKeys'] = null;
    }
    if (this.ID != null) {
      json[r'ID'] = this.ID;
    } else {
      json[r'ID'] = null;
    }
    if (this.running != null) {
      json[r'Running'] = this.running;
    } else {
      json[r'Running'] = null;
    }
    if (this.exitCode != null) {
      json[r'ExitCode'] = this.exitCode;
    } else {
      json[r'ExitCode'] = null;
    }
    if (this.processConfig != null) {
      json[r'ProcessConfig'] = this.processConfig;
    } else {
      json[r'ProcessConfig'] = null;
    }
    if (this.openStdin != null) {
      json[r'OpenStdin'] = this.openStdin;
    } else {
      json[r'OpenStdin'] = null;
    }
    if (this.openStderr != null) {
      json[r'OpenStderr'] = this.openStderr;
    } else {
      json[r'OpenStderr'] = null;
    }
    if (this.openStdout != null) {
      json[r'OpenStdout'] = this.openStdout;
    } else {
      json[r'OpenStdout'] = null;
    }
    if (this.containerID != null) {
      json[r'ContainerID'] = this.containerID;
    } else {
      json[r'ContainerID'] = null;
    }
    if (this.pid != null) {
      json[r'Pid'] = this.pid;
    } else {
      json[r'Pid'] = null;
    }
    return json;
  }

  /// Returns a new [ExecInspectResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExecInspectResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ExecInspectResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ExecInspectResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExecInspectResponse(
        canRemove: mapValueOfType<bool>(json, r'CanRemove'),
        detachKeys: mapValueOfType<String>(json, r'DetachKeys'),
        ID: mapValueOfType<String>(json, r'ID'),
        running: mapValueOfType<bool>(json, r'Running'),
        exitCode: mapValueOfType<int>(json, r'ExitCode'),
        processConfig: ProcessConfig.fromJson(json[r'ProcessConfig']),
        openStdin: mapValueOfType<bool>(json, r'OpenStdin'),
        openStderr: mapValueOfType<bool>(json, r'OpenStderr'),
        openStdout: mapValueOfType<bool>(json, r'OpenStdout'),
        containerID: mapValueOfType<String>(json, r'ContainerID'),
        pid: mapValueOfType<int>(json, r'Pid'),
      );
    }
    return null;
  }

  static List<ExecInspectResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ExecInspectResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExecInspectResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExecInspectResponse> mapFromJson(dynamic json) {
    final map = <String, ExecInspectResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExecInspectResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExecInspectResponse-objects as value to a dart map
  static Map<String, List<ExecInspectResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ExecInspectResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExecInspectResponse.listFromJson(
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

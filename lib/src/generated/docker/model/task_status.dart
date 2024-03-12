//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TaskStatus {
  /// Returns a new [TaskStatus] instance.
  TaskStatus({
    this.timestamp,
    this.state,
    this.message,
    this.err,
    this.containerStatus,
    this.portStatus,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskState? state;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? err;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ContainerStatus? containerStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PortStatus? portStatus;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskStatus &&
          other.timestamp == timestamp &&
          other.state == state &&
          other.message == message &&
          other.err == err &&
          other.containerStatus == containerStatus &&
          other.portStatus == portStatus;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (timestamp == null ? 0 : timestamp!.hashCode) +
      (state == null ? 0 : state!.hashCode) +
      (message == null ? 0 : message!.hashCode) +
      (err == null ? 0 : err!.hashCode) +
      (containerStatus == null ? 0 : containerStatus!.hashCode) +
      (portStatus == null ? 0 : portStatus!.hashCode);

  @override
  String toString() =>
      'TaskStatus[timestamp=$timestamp, state=$state, message=$message, err=$err, containerStatus=$containerStatus, portStatus=$portStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.timestamp != null) {
      json[r'Timestamp'] = this.timestamp;
    } else {
      json[r'Timestamp'] = null;
    }
    if (this.state != null) {
      json[r'State'] = this.state;
    } else {
      json[r'State'] = null;
    }
    if (this.message != null) {
      json[r'Message'] = this.message;
    } else {
      json[r'Message'] = null;
    }
    if (this.err != null) {
      json[r'Err'] = this.err;
    } else {
      json[r'Err'] = null;
    }
    if (this.containerStatus != null) {
      json[r'ContainerStatus'] = this.containerStatus;
    } else {
      json[r'ContainerStatus'] = null;
    }
    if (this.portStatus != null) {
      json[r'PortStatus'] = this.portStatus;
    } else {
      json[r'PortStatus'] = null;
    }
    return json;
  }

  /// Returns a new [TaskStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TaskStatus[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TaskStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskStatus(
        timestamp: mapValueOfType<String>(json, r'Timestamp'),
        state: TaskState.fromJson(json[r'State']),
        message: mapValueOfType<String>(json, r'Message'),
        err: mapValueOfType<String>(json, r'Err'),
        containerStatus: ContainerStatus.fromJson(json[r'ContainerStatus']),
        portStatus: PortStatus.fromJson(json[r'PortStatus']),
      );
    }
    return null;
  }

  static List<TaskStatus> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskStatus> mapFromJson(dynamic json) {
    final map = <String, TaskStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskStatus-objects as value to a dart map
  static Map<String, List<TaskStatus>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TaskStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskStatus.listFromJson(
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

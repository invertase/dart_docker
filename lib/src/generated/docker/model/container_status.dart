//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ContainerStatus {
  /// Returns a new [ContainerStatus] instance.
  ContainerStatus({
    this.containerID,
    this.PID,
    this.exitCode,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? containerID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? PID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? exitCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContainerStatus &&
          other.containerID == containerID &&
          other.PID == PID &&
          other.exitCode == exitCode;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (containerID == null ? 0 : containerID!.hashCode) +
      (PID == null ? 0 : PID!.hashCode) +
      (exitCode == null ? 0 : exitCode!.hashCode);

  @override
  String toString() =>
      'ContainerStatus[containerID=$containerID, PID=$PID, exitCode=$exitCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.containerID != null) {
      json[r'ContainerID'] = this.containerID;
    } else {
      json[r'ContainerID'] = null;
    }
    if (this.PID != null) {
      json[r'PID'] = this.PID;
    } else {
      json[r'PID'] = null;
    }
    if (this.exitCode != null) {
      json[r'ExitCode'] = this.exitCode;
    } else {
      json[r'ExitCode'] = null;
    }
    return json;
  }

  /// Returns a new [ContainerStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContainerStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ContainerStatus[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ContainerStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContainerStatus(
        containerID: mapValueOfType<String>(json, r'ContainerID'),
        PID: mapValueOfType<int>(json, r'PID'),
        exitCode: mapValueOfType<int>(json, r'ExitCode'),
      );
    }
    return null;
  }

  static List<ContainerStatus> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ContainerStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContainerStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContainerStatus> mapFromJson(dynamic json) {
    final map = <String, ContainerStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContainerStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContainerStatus-objects as value to a dart map
  static Map<String, List<ContainerStatus>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ContainerStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContainerStatus.listFromJson(
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

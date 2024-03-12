//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ServiceServiceStatus {
  /// Returns a new [ServiceServiceStatus] instance.
  ServiceServiceStatus({
    this.runningTasks,
    this.desiredTasks,
    this.completedTasks,
  });

  /// The number of tasks for the service currently in the Running state.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? runningTasks;

  /// The number of tasks for the service desired to be running. For replicated services, this is the replica count from the service spec. For global services, this is computed by taking count of all tasks for the service with a Desired State other than Shutdown.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? desiredTasks;

  /// The number of tasks for a job that are in the Completed state. This field must be cross-referenced with the service type, as the value of 0 may mean the service is not in a job mode, or it may mean the job-mode service has no tasks yet Completed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? completedTasks;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServiceServiceStatus &&
          other.runningTasks == runningTasks &&
          other.desiredTasks == desiredTasks &&
          other.completedTasks == completedTasks;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (runningTasks == null ? 0 : runningTasks!.hashCode) +
      (desiredTasks == null ? 0 : desiredTasks!.hashCode) +
      (completedTasks == null ? 0 : completedTasks!.hashCode);

  @override
  String toString() =>
      'ServiceServiceStatus[runningTasks=$runningTasks, desiredTasks=$desiredTasks, completedTasks=$completedTasks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.runningTasks != null) {
      json[r'RunningTasks'] = this.runningTasks;
    } else {
      json[r'RunningTasks'] = null;
    }
    if (this.desiredTasks != null) {
      json[r'DesiredTasks'] = this.desiredTasks;
    } else {
      json[r'DesiredTasks'] = null;
    }
    if (this.completedTasks != null) {
      json[r'CompletedTasks'] = this.completedTasks;
    } else {
      json[r'CompletedTasks'] = null;
    }
    return json;
  }

  /// Returns a new [ServiceServiceStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceServiceStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ServiceServiceStatus[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ServiceServiceStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServiceServiceStatus(
        runningTasks: mapValueOfType<int>(json, r'RunningTasks'),
        desiredTasks: mapValueOfType<int>(json, r'DesiredTasks'),
        completedTasks: mapValueOfType<int>(json, r'CompletedTasks'),
      );
    }
    return null;
  }

  static List<ServiceServiceStatus> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ServiceServiceStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceServiceStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServiceServiceStatus> mapFromJson(dynamic json) {
    final map = <String, ServiceServiceStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceServiceStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServiceServiceStatus-objects as value to a dart map
  static Map<String, List<ServiceServiceStatus>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ServiceServiceStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServiceServiceStatus.listFromJson(
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

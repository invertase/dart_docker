//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ServiceSpecModeReplicatedJob {
  /// Returns a new [ServiceSpecModeReplicatedJob] instance.
  ServiceSpecModeReplicatedJob({
    this.maxConcurrent = 1,
    this.totalCompletions,
  });

  /// The maximum number of replicas to run simultaneously.
  int maxConcurrent;

  /// The total number of replicas desired to reach the Completed state. If unset, will default to the value of `MaxConcurrent`
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalCompletions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServiceSpecModeReplicatedJob &&
          other.maxConcurrent == maxConcurrent &&
          other.totalCompletions == totalCompletions;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (maxConcurrent.hashCode) +
      (totalCompletions == null ? 0 : totalCompletions!.hashCode);

  @override
  String toString() =>
      'ServiceSpecModeReplicatedJob[maxConcurrent=$maxConcurrent, totalCompletions=$totalCompletions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'MaxConcurrent'] = this.maxConcurrent;
    if (this.totalCompletions != null) {
      json[r'TotalCompletions'] = this.totalCompletions;
    } else {
      json[r'TotalCompletions'] = null;
    }
    return json;
  }

  /// Returns a new [ServiceSpecModeReplicatedJob] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceSpecModeReplicatedJob? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ServiceSpecModeReplicatedJob[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ServiceSpecModeReplicatedJob[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServiceSpecModeReplicatedJob(
        maxConcurrent: mapValueOfType<int>(json, r'MaxConcurrent') ?? 1,
        totalCompletions: mapValueOfType<int>(json, r'TotalCompletions'),
      );
    }
    return null;
  }

  static List<ServiceSpecModeReplicatedJob> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ServiceSpecModeReplicatedJob>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceSpecModeReplicatedJob.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServiceSpecModeReplicatedJob> mapFromJson(dynamic json) {
    final map = <String, ServiceSpecModeReplicatedJob>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceSpecModeReplicatedJob.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServiceSpecModeReplicatedJob-objects as value to a dart map
  static Map<String, List<ServiceSpecModeReplicatedJob>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ServiceSpecModeReplicatedJob>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServiceSpecModeReplicatedJob.listFromJson(
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

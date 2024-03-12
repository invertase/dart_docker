//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ServiceSpecMode {
  /// Returns a new [ServiceSpecMode] instance.
  ServiceSpecMode({
    this.replicated,
    this.global,
    this.replicatedJob,
    this.globalJob,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServiceSpecModeReplicated? replicated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? global;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServiceSpecModeReplicatedJob? replicatedJob;

  /// The mode used for services which run a task to the completed state on each valid node.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? globalJob;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServiceSpecMode &&
          other.replicated == replicated &&
          other.global == global &&
          other.replicatedJob == replicatedJob &&
          other.globalJob == globalJob;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (replicated == null ? 0 : replicated!.hashCode) +
      (global == null ? 0 : global!.hashCode) +
      (replicatedJob == null ? 0 : replicatedJob!.hashCode) +
      (globalJob == null ? 0 : globalJob!.hashCode);

  @override
  String toString() =>
      'ServiceSpecMode[replicated=$replicated, global=$global, replicatedJob=$replicatedJob, globalJob=$globalJob]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.replicated != null) {
      json[r'Replicated'] = this.replicated;
    } else {
      json[r'Replicated'] = null;
    }
    if (this.global != null) {
      json[r'Global'] = this.global;
    } else {
      json[r'Global'] = null;
    }
    if (this.replicatedJob != null) {
      json[r'ReplicatedJob'] = this.replicatedJob;
    } else {
      json[r'ReplicatedJob'] = null;
    }
    if (this.globalJob != null) {
      json[r'GlobalJob'] = this.globalJob;
    } else {
      json[r'GlobalJob'] = null;
    }
    return json;
  }

  /// Returns a new [ServiceSpecMode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceSpecMode? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ServiceSpecMode[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ServiceSpecMode[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServiceSpecMode(
        replicated: ServiceSpecModeReplicated.fromJson(json[r'Replicated']),
        global: mapValueOfType<Object>(json, r'Global'),
        replicatedJob:
            ServiceSpecModeReplicatedJob.fromJson(json[r'ReplicatedJob']),
        globalJob: mapValueOfType<Object>(json, r'GlobalJob'),
      );
    }
    return null;
  }

  static List<ServiceSpecMode> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ServiceSpecMode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceSpecMode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServiceSpecMode> mapFromJson(dynamic json) {
    final map = <String, ServiceSpecMode>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceSpecMode.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServiceSpecMode-objects as value to a dart map
  static Map<String, List<ServiceSpecMode>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ServiceSpecMode>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServiceSpecMode.listFromJson(
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

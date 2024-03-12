//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class Task {
  /// Returns a new [Task] instance.
  Task({
    this.ID,
    this.version,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.labels = const {},
    this.spec,
    this.serviceID,
    this.slot,
    this.nodeID,
    this.assignedGenericResources = const [],
    this.status,
    this.desiredState,
    this.jobIteration,
  });

  /// The ID of the task.
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
  ObjectVersion? version;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  /// Name of the task.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// User-defined key/value metadata.
  Map<String, String> labels;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskSpec? spec;

  /// The ID of the service this task is part of.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? slot;

  /// The ID of the node that this task is on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nodeID;

  /// User-defined resources can be either Integer resources (e.g, `SSD=3`) or String resources (e.g, `GPU=UUID1`).
  List<GenericResourcesInner> assignedGenericResources;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskStatus? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskState? desiredState;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ObjectVersion? jobIteration;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Task &&
          other.ID == ID &&
          other.version == version &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.name == name &&
          _deepEquality.equals(other.labels, labels) &&
          other.spec == spec &&
          other.serviceID == serviceID &&
          other.slot == slot &&
          other.nodeID == nodeID &&
          _deepEquality.equals(
              other.assignedGenericResources, assignedGenericResources) &&
          other.status == status &&
          other.desiredState == desiredState &&
          other.jobIteration == jobIteration;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (ID == null ? 0 : ID!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (updatedAt == null ? 0 : updatedAt!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (labels.hashCode) +
      (spec == null ? 0 : spec!.hashCode) +
      (serviceID == null ? 0 : serviceID!.hashCode) +
      (slot == null ? 0 : slot!.hashCode) +
      (nodeID == null ? 0 : nodeID!.hashCode) +
      (assignedGenericResources.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (desiredState == null ? 0 : desiredState!.hashCode) +
      (jobIteration == null ? 0 : jobIteration!.hashCode);

  @override
  String toString() =>
      'Task[ID=$ID, version=$version, createdAt=$createdAt, updatedAt=$updatedAt, name=$name, labels=$labels, spec=$spec, serviceID=$serviceID, slot=$slot, nodeID=$nodeID, assignedGenericResources=$assignedGenericResources, status=$status, desiredState=$desiredState, jobIteration=$jobIteration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ID != null) {
      json[r'ID'] = this.ID;
    } else {
      json[r'ID'] = null;
    }
    if (this.version != null) {
      json[r'Version'] = this.version;
    } else {
      json[r'Version'] = null;
    }
    if (this.createdAt != null) {
      json[r'CreatedAt'] = this.createdAt;
    } else {
      json[r'CreatedAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'UpdatedAt'] = this.updatedAt;
    } else {
      json[r'UpdatedAt'] = null;
    }
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    json[r'Labels'] = this.labels;
    if (this.spec != null) {
      json[r'Spec'] = this.spec;
    } else {
      json[r'Spec'] = null;
    }
    if (this.serviceID != null) {
      json[r'ServiceID'] = this.serviceID;
    } else {
      json[r'ServiceID'] = null;
    }
    if (this.slot != null) {
      json[r'Slot'] = this.slot;
    } else {
      json[r'Slot'] = null;
    }
    if (this.nodeID != null) {
      json[r'NodeID'] = this.nodeID;
    } else {
      json[r'NodeID'] = null;
    }
    json[r'AssignedGenericResources'] = this.assignedGenericResources;
    if (this.status != null) {
      json[r'Status'] = this.status;
    } else {
      json[r'Status'] = null;
    }
    if (this.desiredState != null) {
      json[r'DesiredState'] = this.desiredState;
    } else {
      json[r'DesiredState'] = null;
    }
    if (this.jobIteration != null) {
      json[r'JobIteration'] = this.jobIteration;
    } else {
      json[r'JobIteration'] = null;
    }
    return json;
  }

  /// Returns a new [Task] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Task? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Task[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Task[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Task(
        ID: mapValueOfType<String>(json, r'ID'),
        version: ObjectVersion.fromJson(json[r'Version']),
        createdAt: mapValueOfType<String>(json, r'CreatedAt'),
        updatedAt: mapValueOfType<String>(json, r'UpdatedAt'),
        name: mapValueOfType<String>(json, r'Name'),
        labels: mapCastOfType<String, String>(json, r'Labels') ?? const {},
        spec: TaskSpec.fromJson(json[r'Spec']),
        serviceID: mapValueOfType<String>(json, r'ServiceID'),
        slot: mapValueOfType<int>(json, r'Slot'),
        nodeID: mapValueOfType<String>(json, r'NodeID'),
        assignedGenericResources: GenericResourcesInner.listFromJson(
            json[r'AssignedGenericResources']),
        status: TaskStatus.fromJson(json[r'Status']),
        desiredState: TaskState.fromJson(json[r'DesiredState']),
        jobIteration: ObjectVersion.fromJson(json[r'JobIteration']),
      );
    }
    return null;
  }

  static List<Task> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Task>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Task.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Task> mapFromJson(dynamic json) {
    final map = <String, Task>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Task.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Task-objects as value to a dart map
  static Map<String, List<Task>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Task>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Task.listFromJson(
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

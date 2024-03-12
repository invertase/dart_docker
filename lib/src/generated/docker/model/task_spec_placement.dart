//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TaskSpecPlacement {
  /// Returns a new [TaskSpecPlacement] instance.
  TaskSpecPlacement({
    this.constraints = const [],
    this.preferences = const [],
    this.maxReplicas = 0,
    this.platforms = const [],
  });

  /// An array of constraint expressions to limit the set of nodes where a task can be scheduled. Constraint expressions can either use a _match_ (`==`) or _exclude_ (`!=`) rule. Multiple constraints find nodes that satisfy every expression (AND match). Constraints can match node or Docker Engine labels as follows:  node attribute       | matches                        | example ---------------------|--------------------------------|----------------------------------------------- `node.id`            | Node ID                        | `node.id==2ivku8v2gvtg4` `node.hostname`      | Node hostname                  | `node.hostname!=node-2` `node.role`          | Node role (`manager`/`worker`) | `node.role==manager` `node.platform.os`   | Node operating system          | `node.platform.os==windows` `node.platform.arch` | Node architecture              | `node.platform.arch==x86_64` `node.labels`        | User-defined node labels       | `node.labels.security==high` `engine.labels`      | Docker Engine's labels         | `engine.labels.operatingsystem==ubuntu-14.04`  `engine.labels` apply to Docker Engine labels like operating system, drivers, etc. Swarm administrators add `node.labels` for operational purposes by using the [`node update endpoint`](#operation/NodeUpdate).
  List<String> constraints;

  /// Preferences provide a way to make the scheduler aware of factors such as topology. They are provided in order from highest to lowest precedence.
  List<TaskSpecPlacementPreferencesInner> preferences;

  /// Maximum number of replicas for per node (default value is 0, which is unlimited)
  int maxReplicas;

  /// Platforms stores all the platforms that the service's image can run on. This field is used in the platform filter for scheduling. If empty, then the platform filter is off, meaning there are no scheduling restrictions.
  List<Platform> platforms;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskSpecPlacement &&
          _deepEquality.equals(other.constraints, constraints) &&
          _deepEquality.equals(other.preferences, preferences) &&
          other.maxReplicas == maxReplicas &&
          _deepEquality.equals(other.platforms, platforms);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (constraints.hashCode) +
      (preferences.hashCode) +
      (maxReplicas.hashCode) +
      (platforms.hashCode);

  @override
  String toString() =>
      'TaskSpecPlacement[constraints=$constraints, preferences=$preferences, maxReplicas=$maxReplicas, platforms=$platforms]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Constraints'] = this.constraints;
    json[r'Preferences'] = this.preferences;
    json[r'MaxReplicas'] = this.maxReplicas;
    json[r'Platforms'] = this.platforms;
    return json;
  }

  /// Returns a new [TaskSpecPlacement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskSpecPlacement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TaskSpecPlacement[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TaskSpecPlacement[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskSpecPlacement(
        constraints: json[r'Constraints'] is Iterable
            ? (json[r'Constraints'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        preferences: TaskSpecPlacementPreferencesInner.listFromJson(
            json[r'Preferences']),
        maxReplicas: mapValueOfType<int>(json, r'MaxReplicas') ?? 0,
        platforms: Platform.listFromJson(json[r'Platforms']),
      );
    }
    return null;
  }

  static List<TaskSpecPlacement> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskSpecPlacement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskSpecPlacement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskSpecPlacement> mapFromJson(dynamic json) {
    final map = <String, TaskSpecPlacement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskSpecPlacement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskSpecPlacement-objects as value to a dart map
  static Map<String, List<TaskSpecPlacement>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TaskSpecPlacement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskSpecPlacement.listFromJson(
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

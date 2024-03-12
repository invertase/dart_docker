//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TaskSpecRestartPolicy {
  /// Returns a new [TaskSpecRestartPolicy] instance.
  TaskSpecRestartPolicy({
    this.condition,
    this.delay,
    this.maxAttempts = 0,
    this.window = 0,
  });

  /// Condition for restart.
  TaskSpecRestartPolicyConditionEnum? condition;

  /// Delay between restart attempts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? delay;

  /// Maximum attempts to restart a given container before giving up (default value is 0, which is ignored).
  int maxAttempts;

  /// Windows is the time window used to evaluate the restart policy (default value is 0, which is unbounded).
  int window;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskSpecRestartPolicy &&
          other.condition == condition &&
          other.delay == delay &&
          other.maxAttempts == maxAttempts &&
          other.window == window;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (condition == null ? 0 : condition!.hashCode) +
      (delay == null ? 0 : delay!.hashCode) +
      (maxAttempts.hashCode) +
      (window.hashCode);

  @override
  String toString() =>
      'TaskSpecRestartPolicy[condition=$condition, delay=$delay, maxAttempts=$maxAttempts, window=$window]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.condition != null) {
      json[r'Condition'] = this.condition;
    } else {
      json[r'Condition'] = null;
    }
    if (this.delay != null) {
      json[r'Delay'] = this.delay;
    } else {
      json[r'Delay'] = null;
    }
    json[r'MaxAttempts'] = this.maxAttempts;
    json[r'Window'] = this.window;
    return json;
  }

  /// Returns a new [TaskSpecRestartPolicy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskSpecRestartPolicy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TaskSpecRestartPolicy[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TaskSpecRestartPolicy[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskSpecRestartPolicy(
        condition:
            TaskSpecRestartPolicyConditionEnum.fromJson(json[r'Condition']),
        delay: mapValueOfType<int>(json, r'Delay'),
        maxAttempts: mapValueOfType<int>(json, r'MaxAttempts') ?? 0,
        window: mapValueOfType<int>(json, r'Window') ?? 0,
      );
    }
    return null;
  }

  static List<TaskSpecRestartPolicy> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskSpecRestartPolicy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskSpecRestartPolicy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskSpecRestartPolicy> mapFromJson(dynamic json) {
    final map = <String, TaskSpecRestartPolicy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskSpecRestartPolicy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskSpecRestartPolicy-objects as value to a dart map
  static Map<String, List<TaskSpecRestartPolicy>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TaskSpecRestartPolicy>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskSpecRestartPolicy.listFromJson(
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

/// Condition for restart.
class TaskSpecRestartPolicyConditionEnum {
  /// Instantiate a new enum with the provided [value].
  const TaskSpecRestartPolicyConditionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const none = TaskSpecRestartPolicyConditionEnum._(r'none');
  static const onFailure = TaskSpecRestartPolicyConditionEnum._(r'on-failure');
  static const any = TaskSpecRestartPolicyConditionEnum._(r'any');

  /// List of all possible values in this [enum][TaskSpecRestartPolicyConditionEnum].
  static const values = <TaskSpecRestartPolicyConditionEnum>[
    none,
    onFailure,
    any,
  ];

  static TaskSpecRestartPolicyConditionEnum? fromJson(dynamic value) =>
      TaskSpecRestartPolicyConditionEnumTypeTransformer().decode(value);

  static List<TaskSpecRestartPolicyConditionEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskSpecRestartPolicyConditionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskSpecRestartPolicyConditionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TaskSpecRestartPolicyConditionEnum] to String,
/// and [decode] dynamic data back to [TaskSpecRestartPolicyConditionEnum].
class TaskSpecRestartPolicyConditionEnumTypeTransformer {
  factory TaskSpecRestartPolicyConditionEnumTypeTransformer() =>
      _instance ??= const TaskSpecRestartPolicyConditionEnumTypeTransformer._();

  const TaskSpecRestartPolicyConditionEnumTypeTransformer._();

  String encode(TaskSpecRestartPolicyConditionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TaskSpecRestartPolicyConditionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TaskSpecRestartPolicyConditionEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'none':
          return TaskSpecRestartPolicyConditionEnum.none;
        case r'on-failure':
          return TaskSpecRestartPolicyConditionEnum.onFailure;
        case r'any':
          return TaskSpecRestartPolicyConditionEnum.any;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TaskSpecRestartPolicyConditionEnumTypeTransformer] instance.
  static TaskSpecRestartPolicyConditionEnumTypeTransformer? _instance;
}

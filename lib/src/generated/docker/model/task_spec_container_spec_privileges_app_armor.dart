//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TaskSpecContainerSpecPrivilegesAppArmor {
  /// Returns a new [TaskSpecContainerSpecPrivilegesAppArmor] instance.
  TaskSpecContainerSpecPrivilegesAppArmor({
    this.mode,
  });

  TaskSpecContainerSpecPrivilegesAppArmorModeEnum? mode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskSpecContainerSpecPrivilegesAppArmor && other.mode == mode;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (mode == null ? 0 : mode!.hashCode);

  @override
  String toString() => 'TaskSpecContainerSpecPrivilegesAppArmor[mode=$mode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.mode != null) {
      json[r'Mode'] = this.mode;
    } else {
      json[r'Mode'] = null;
    }
    return json;
  }

  /// Returns a new [TaskSpecContainerSpecPrivilegesAppArmor] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskSpecContainerSpecPrivilegesAppArmor? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TaskSpecContainerSpecPrivilegesAppArmor[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TaskSpecContainerSpecPrivilegesAppArmor[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskSpecContainerSpecPrivilegesAppArmor(
        mode: TaskSpecContainerSpecPrivilegesAppArmorModeEnum.fromJson(
            json[r'Mode']),
      );
    }
    return null;
  }

  static List<TaskSpecContainerSpecPrivilegesAppArmor> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskSpecContainerSpecPrivilegesAppArmor>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskSpecContainerSpecPrivilegesAppArmor.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskSpecContainerSpecPrivilegesAppArmor> mapFromJson(
      dynamic json) {
    final map = <String, TaskSpecContainerSpecPrivilegesAppArmor>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            TaskSpecContainerSpecPrivilegesAppArmor.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskSpecContainerSpecPrivilegesAppArmor-objects as value to a dart map
  static Map<String, List<TaskSpecContainerSpecPrivilegesAppArmor>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TaskSpecContainerSpecPrivilegesAppArmor>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskSpecContainerSpecPrivilegesAppArmor.listFromJson(
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

class TaskSpecContainerSpecPrivilegesAppArmorModeEnum {
  /// Instantiate a new enum with the provided [value].
  const TaskSpecContainerSpecPrivilegesAppArmorModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const default_ =
      TaskSpecContainerSpecPrivilegesAppArmorModeEnum._(r'default');
  static const disabled =
      TaskSpecContainerSpecPrivilegesAppArmorModeEnum._(r'disabled');

  /// List of all possible values in this [enum][TaskSpecContainerSpecPrivilegesAppArmorModeEnum].
  static const values = <TaskSpecContainerSpecPrivilegesAppArmorModeEnum>[
    default_,
    disabled,
  ];

  static TaskSpecContainerSpecPrivilegesAppArmorModeEnum? fromJson(
          dynamic value) =>
      TaskSpecContainerSpecPrivilegesAppArmorModeEnumTypeTransformer()
          .decode(value);

  static List<TaskSpecContainerSpecPrivilegesAppArmorModeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskSpecContainerSpecPrivilegesAppArmorModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value =
            TaskSpecContainerSpecPrivilegesAppArmorModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TaskSpecContainerSpecPrivilegesAppArmorModeEnum] to String,
/// and [decode] dynamic data back to [TaskSpecContainerSpecPrivilegesAppArmorModeEnum].
class TaskSpecContainerSpecPrivilegesAppArmorModeEnumTypeTransformer {
  factory TaskSpecContainerSpecPrivilegesAppArmorModeEnumTypeTransformer() =>
      _instance ??=
          const TaskSpecContainerSpecPrivilegesAppArmorModeEnumTypeTransformer
              ._();

  const TaskSpecContainerSpecPrivilegesAppArmorModeEnumTypeTransformer._();

  String encode(TaskSpecContainerSpecPrivilegesAppArmorModeEnum data) =>
      data.value;

  /// Decodes a [dynamic value][data] to a TaskSpecContainerSpecPrivilegesAppArmorModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TaskSpecContainerSpecPrivilegesAppArmorModeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'default':
          return TaskSpecContainerSpecPrivilegesAppArmorModeEnum.default_;
        case r'disabled':
          return TaskSpecContainerSpecPrivilegesAppArmorModeEnum.disabled;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TaskSpecContainerSpecPrivilegesAppArmorModeEnumTypeTransformer] instance.
  static TaskSpecContainerSpecPrivilegesAppArmorModeEnumTypeTransformer?
      _instance;
}

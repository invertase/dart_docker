//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TaskState {
  /// Instantiate a new enum with the provided [value].
  const TaskState._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const new_ = TaskState._(r'new');
  static const allocated = TaskState._(r'allocated');
  static const pending = TaskState._(r'pending');
  static const assigned = TaskState._(r'assigned');
  static const accepted = TaskState._(r'accepted');
  static const preparing = TaskState._(r'preparing');
  static const ready = TaskState._(r'ready');
  static const starting = TaskState._(r'starting');
  static const running = TaskState._(r'running');
  static const complete = TaskState._(r'complete');
  static const shutdown = TaskState._(r'shutdown');
  static const failed = TaskState._(r'failed');
  static const rejected = TaskState._(r'rejected');
  static const remove = TaskState._(r'remove');
  static const orphaned = TaskState._(r'orphaned');

  /// List of all possible values in this [enum][TaskState].
  static const values = <TaskState>[
    new_,
    allocated,
    pending,
    assigned,
    accepted,
    preparing,
    ready,
    starting,
    running,
    complete,
    shutdown,
    failed,
    rejected,
    remove,
    orphaned,
  ];

  static TaskState? fromJson(dynamic value) =>
      TaskStateTypeTransformer().decode(value);

  static List<TaskState> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TaskState] to String,
/// and [decode] dynamic data back to [TaskState].
class TaskStateTypeTransformer {
  factory TaskStateTypeTransformer() =>
      _instance ??= const TaskStateTypeTransformer._();

  const TaskStateTypeTransformer._();

  String encode(TaskState data) => data.value;

  /// Decodes a [dynamic value][data] to a TaskState.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TaskState? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'new':
          return TaskState.new_;
        case r'allocated':
          return TaskState.allocated;
        case r'pending':
          return TaskState.pending;
        case r'assigned':
          return TaskState.assigned;
        case r'accepted':
          return TaskState.accepted;
        case r'preparing':
          return TaskState.preparing;
        case r'ready':
          return TaskState.ready;
        case r'starting':
          return TaskState.starting;
        case r'running':
          return TaskState.running;
        case r'complete':
          return TaskState.complete;
        case r'shutdown':
          return TaskState.shutdown;
        case r'failed':
          return TaskState.failed;
        case r'rejected':
          return TaskState.rejected;
        case r'remove':
          return TaskState.remove;
        case r'orphaned':
          return TaskState.orphaned;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TaskStateTypeTransformer] instance.
  static TaskStateTypeTransformer? _instance;
}

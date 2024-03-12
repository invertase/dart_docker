//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ContainerState {
  /// Returns a new [ContainerState] instance.
  ContainerState({
    this.status,
    this.running,
    this.paused,
    this.restarting,
    this.oOMKilled,
    this.dead,
    this.pid,
    this.exitCode,
    this.error,
    this.startedAt,
    this.finishedAt,
    this.health,
  });

  /// String representation of the container state. Can be one of \"created\", \"running\", \"paused\", \"restarting\", \"removing\", \"exited\", or \"dead\".
  ContainerStateStatusEnum? status;

  /// Whether this container is running.  Note that a running container can be _paused_. The `Running` and `Paused` booleans are not mutually exclusive:  When pausing a container (on Linux), the freezer cgroup is used to suspend all processes in the container. Freezing the process requires the process to be running. As a result, paused containers are both `Running` _and_ `Paused`.  Use the `Status` field instead to determine if a container's state is \"running\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? running;

  /// Whether this container is paused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? paused;

  /// Whether this container is restarting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? restarting;

  /// Whether a process within this container has been killed because it ran out of memory since the container was last started.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? oOMKilled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? dead;

  /// The process ID of this container
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pid;

  /// The last exit code of this container
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? exitCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// The time when this container was last started.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startedAt;

  /// The time when this container last exited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? finishedAt;

  Health? health;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContainerState &&
          other.status == status &&
          other.running == running &&
          other.paused == paused &&
          other.restarting == restarting &&
          other.oOMKilled == oOMKilled &&
          other.dead == dead &&
          other.pid == pid &&
          other.exitCode == exitCode &&
          other.error == error &&
          other.startedAt == startedAt &&
          other.finishedAt == finishedAt &&
          other.health == health;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (status == null ? 0 : status!.hashCode) +
      (running == null ? 0 : running!.hashCode) +
      (paused == null ? 0 : paused!.hashCode) +
      (restarting == null ? 0 : restarting!.hashCode) +
      (oOMKilled == null ? 0 : oOMKilled!.hashCode) +
      (dead == null ? 0 : dead!.hashCode) +
      (pid == null ? 0 : pid!.hashCode) +
      (exitCode == null ? 0 : exitCode!.hashCode) +
      (error == null ? 0 : error!.hashCode) +
      (startedAt == null ? 0 : startedAt!.hashCode) +
      (finishedAt == null ? 0 : finishedAt!.hashCode) +
      (health == null ? 0 : health!.hashCode);

  @override
  String toString() =>
      'ContainerState[status=$status, running=$running, paused=$paused, restarting=$restarting, oOMKilled=$oOMKilled, dead=$dead, pid=$pid, exitCode=$exitCode, error=$error, startedAt=$startedAt, finishedAt=$finishedAt, health=$health]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.status != null) {
      json[r'Status'] = this.status;
    } else {
      json[r'Status'] = null;
    }
    if (this.running != null) {
      json[r'Running'] = this.running;
    } else {
      json[r'Running'] = null;
    }
    if (this.paused != null) {
      json[r'Paused'] = this.paused;
    } else {
      json[r'Paused'] = null;
    }
    if (this.restarting != null) {
      json[r'Restarting'] = this.restarting;
    } else {
      json[r'Restarting'] = null;
    }
    if (this.oOMKilled != null) {
      json[r'OOMKilled'] = this.oOMKilled;
    } else {
      json[r'OOMKilled'] = null;
    }
    if (this.dead != null) {
      json[r'Dead'] = this.dead;
    } else {
      json[r'Dead'] = null;
    }
    if (this.pid != null) {
      json[r'Pid'] = this.pid;
    } else {
      json[r'Pid'] = null;
    }
    if (this.exitCode != null) {
      json[r'ExitCode'] = this.exitCode;
    } else {
      json[r'ExitCode'] = null;
    }
    if (this.error != null) {
      json[r'Error'] = this.error;
    } else {
      json[r'Error'] = null;
    }
    if (this.startedAt != null) {
      json[r'StartedAt'] = this.startedAt;
    } else {
      json[r'StartedAt'] = null;
    }
    if (this.finishedAt != null) {
      json[r'FinishedAt'] = this.finishedAt;
    } else {
      json[r'FinishedAt'] = null;
    }
    if (this.health != null) {
      json[r'Health'] = this.health;
    } else {
      json[r'Health'] = null;
    }
    return json;
  }

  /// Returns a new [ContainerState] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContainerState? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ContainerState[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ContainerState[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContainerState(
        status: ContainerStateStatusEnum.fromJson(json[r'Status']),
        running: mapValueOfType<bool>(json, r'Running'),
        paused: mapValueOfType<bool>(json, r'Paused'),
        restarting: mapValueOfType<bool>(json, r'Restarting'),
        oOMKilled: mapValueOfType<bool>(json, r'OOMKilled'),
        dead: mapValueOfType<bool>(json, r'Dead'),
        pid: mapValueOfType<int>(json, r'Pid'),
        exitCode: mapValueOfType<int>(json, r'ExitCode'),
        error: mapValueOfType<String>(json, r'Error'),
        startedAt: mapValueOfType<String>(json, r'StartedAt'),
        finishedAt: mapValueOfType<String>(json, r'FinishedAt'),
        health: Health.fromJson(json[r'Health']),
      );
    }
    return null;
  }

  static List<ContainerState> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ContainerState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContainerState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContainerState> mapFromJson(dynamic json) {
    final map = <String, ContainerState>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContainerState.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContainerState-objects as value to a dart map
  static Map<String, List<ContainerState>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ContainerState>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContainerState.listFromJson(
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

/// String representation of the container state. Can be one of \"created\", \"running\", \"paused\", \"restarting\", \"removing\", \"exited\", or \"dead\".
class ContainerStateStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ContainerStateStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const created = ContainerStateStatusEnum._(r'created');
  static const running = ContainerStateStatusEnum._(r'running');
  static const paused = ContainerStateStatusEnum._(r'paused');
  static const restarting = ContainerStateStatusEnum._(r'restarting');
  static const removing = ContainerStateStatusEnum._(r'removing');
  static const exited = ContainerStateStatusEnum._(r'exited');
  static const dead = ContainerStateStatusEnum._(r'dead');

  /// List of all possible values in this [enum][ContainerStateStatusEnum].
  static const values = <ContainerStateStatusEnum>[
    created,
    running,
    paused,
    restarting,
    removing,
    exited,
    dead,
  ];

  static ContainerStateStatusEnum? fromJson(dynamic value) =>
      ContainerStateStatusEnumTypeTransformer().decode(value);

  static List<ContainerStateStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ContainerStateStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContainerStateStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ContainerStateStatusEnum] to String,
/// and [decode] dynamic data back to [ContainerStateStatusEnum].
class ContainerStateStatusEnumTypeTransformer {
  factory ContainerStateStatusEnumTypeTransformer() =>
      _instance ??= const ContainerStateStatusEnumTypeTransformer._();

  const ContainerStateStatusEnumTypeTransformer._();

  String encode(ContainerStateStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ContainerStateStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ContainerStateStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'created':
          return ContainerStateStatusEnum.created;
        case r'running':
          return ContainerStateStatusEnum.running;
        case r'paused':
          return ContainerStateStatusEnum.paused;
        case r'restarting':
          return ContainerStateStatusEnum.restarting;
        case r'removing':
          return ContainerStateStatusEnum.removing;
        case r'exited':
          return ContainerStateStatusEnum.exited;
        case r'dead':
          return ContainerStateStatusEnum.dead;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ContainerStateStatusEnumTypeTransformer] instance.
  static ContainerStateStatusEnumTypeTransformer? _instance;
}

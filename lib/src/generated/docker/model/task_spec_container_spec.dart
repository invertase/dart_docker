//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TaskSpecContainerSpec {
  /// Returns a new [TaskSpecContainerSpec] instance.
  TaskSpecContainerSpec({
    this.image,
    this.labels = const {},
    this.command = const [],
    this.args = const [],
    this.hostname,
    this.env = const [],
    this.dir,
    this.user,
    this.groups = const [],
    this.privileges,
    this.TTY,
    this.openStdin,
    this.readOnly,
    this.mounts = const [],
    this.stopSignal,
    this.stopGracePeriod,
    this.healthCheck,
    this.hosts = const [],
    this.dNSConfig,
    this.secrets = const [],
    this.configs = const [],
    this.isolation,
    this.init,
    this.sysctls = const {},
    this.capabilityAdd = const [],
    this.capabilityDrop = const [],
    this.ulimits = const [],
  });

  /// The image name to use for the container
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  /// User-defined key/value data.
  Map<String, String> labels;

  /// The command to be run in the image.
  List<String> command;

  /// Arguments to the command.
  List<String> args;

  /// The hostname to use for the container, as a valid [RFC 1123](https://tools.ietf.org/html/rfc1123) hostname.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hostname;

  /// A list of environment variables in the form `VAR=value`.
  List<String> env;

  /// The working directory for commands to run in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dir;

  /// The user inside the container.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  /// A list of additional groups that the container process will run as.
  List<String> groups;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskSpecContainerSpecPrivileges? privileges;

  /// Whether a pseudo-TTY should be allocated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? TTY;

  /// Open `stdin`
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? openStdin;

  /// Mount the container's root filesystem as read only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? readOnly;

  /// Specification for mounts to be added to containers created as part of the service.
  List<Mount> mounts;

  /// Signal to stop the container.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stopSignal;

  /// Amount of time to wait for the container to terminate before forcefully killing it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stopGracePeriod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HealthConfig? healthCheck;

  /// A list of hostname/IP mappings to add to the container's `hosts` file. The format of extra hosts is specified in the [hosts(5)](http://man7.org/linux/man-pages/man5/hosts.5.html) man page:      IP_address canonical_hostname [aliases...]
  List<String> hosts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskSpecContainerSpecDNSConfig? dNSConfig;

  /// Secrets contains references to zero or more secrets that will be exposed to the service.
  List<TaskSpecContainerSpecSecretsInner> secrets;

  /// Configs contains references to zero or more configs that will be exposed to the service.
  List<TaskSpecContainerSpecConfigsInner> configs;

  /// Isolation technology of the containers running the service. (Windows only)
  TaskSpecContainerSpecIsolationEnum? isolation;

  /// Run an init inside the container that forwards signals and reaps processes. This field is omitted if empty, and the default (as configured on the daemon) is used.
  bool? init;

  /// Set kernel namedspaced parameters (sysctls) in the container. The Sysctls option on services accepts the same sysctls as the are supported on containers. Note that while the same sysctls are supported, no guarantees or checks are made about their suitability for a clustered environment, and it's up to the user to determine whether a given sysctl will work properly in a Service.
  Map<String, String> sysctls;

  /// A list of kernel capabilities to add to the default set for the container.
  List<String> capabilityAdd;

  /// A list of kernel capabilities to drop from the default set for the container.
  List<String> capabilityDrop;

  /// A list of resource limits to set in the container. For example: `{\"Name\": \"nofile\", \"Soft\": 1024, \"Hard\": 2048}`\"
  List<ResourcesUlimitsInner> ulimits;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskSpecContainerSpec &&
          other.image == image &&
          _deepEquality.equals(other.labels, labels) &&
          _deepEquality.equals(other.command, command) &&
          _deepEquality.equals(other.args, args) &&
          other.hostname == hostname &&
          _deepEquality.equals(other.env, env) &&
          other.dir == dir &&
          other.user == user &&
          _deepEquality.equals(other.groups, groups) &&
          other.privileges == privileges &&
          other.TTY == TTY &&
          other.openStdin == openStdin &&
          other.readOnly == readOnly &&
          _deepEquality.equals(other.mounts, mounts) &&
          other.stopSignal == stopSignal &&
          other.stopGracePeriod == stopGracePeriod &&
          other.healthCheck == healthCheck &&
          _deepEquality.equals(other.hosts, hosts) &&
          other.dNSConfig == dNSConfig &&
          _deepEquality.equals(other.secrets, secrets) &&
          _deepEquality.equals(other.configs, configs) &&
          other.isolation == isolation &&
          other.init == init &&
          _deepEquality.equals(other.sysctls, sysctls) &&
          _deepEquality.equals(other.capabilityAdd, capabilityAdd) &&
          _deepEquality.equals(other.capabilityDrop, capabilityDrop) &&
          _deepEquality.equals(other.ulimits, ulimits);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (image == null ? 0 : image!.hashCode) +
      (labels.hashCode) +
      (command.hashCode) +
      (args.hashCode) +
      (hostname == null ? 0 : hostname!.hashCode) +
      (env.hashCode) +
      (dir == null ? 0 : dir!.hashCode) +
      (user == null ? 0 : user!.hashCode) +
      (groups.hashCode) +
      (privileges == null ? 0 : privileges!.hashCode) +
      (TTY == null ? 0 : TTY!.hashCode) +
      (openStdin == null ? 0 : openStdin!.hashCode) +
      (readOnly == null ? 0 : readOnly!.hashCode) +
      (mounts.hashCode) +
      (stopSignal == null ? 0 : stopSignal!.hashCode) +
      (stopGracePeriod == null ? 0 : stopGracePeriod!.hashCode) +
      (healthCheck == null ? 0 : healthCheck!.hashCode) +
      (hosts.hashCode) +
      (dNSConfig == null ? 0 : dNSConfig!.hashCode) +
      (secrets.hashCode) +
      (configs.hashCode) +
      (isolation == null ? 0 : isolation!.hashCode) +
      (init == null ? 0 : init!.hashCode) +
      (sysctls.hashCode) +
      (capabilityAdd.hashCode) +
      (capabilityDrop.hashCode) +
      (ulimits.hashCode);

  @override
  String toString() =>
      'TaskSpecContainerSpec[image=$image, labels=$labels, command=$command, args=$args, hostname=$hostname, env=$env, dir=$dir, user=$user, groups=$groups, privileges=$privileges, TTY=$TTY, openStdin=$openStdin, readOnly=$readOnly, mounts=$mounts, stopSignal=$stopSignal, stopGracePeriod=$stopGracePeriod, healthCheck=$healthCheck, hosts=$hosts, dNSConfig=$dNSConfig, secrets=$secrets, configs=$configs, isolation=$isolation, init=$init, sysctls=$sysctls, capabilityAdd=$capabilityAdd, capabilityDrop=$capabilityDrop, ulimits=$ulimits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.image != null) {
      json[r'Image'] = this.image;
    } else {
      json[r'Image'] = null;
    }
    json[r'Labels'] = this.labels;
    json[r'Command'] = this.command;
    json[r'Args'] = this.args;
    if (this.hostname != null) {
      json[r'Hostname'] = this.hostname;
    } else {
      json[r'Hostname'] = null;
    }
    json[r'Env'] = this.env;
    if (this.dir != null) {
      json[r'Dir'] = this.dir;
    } else {
      json[r'Dir'] = null;
    }
    if (this.user != null) {
      json[r'User'] = this.user;
    } else {
      json[r'User'] = null;
    }
    json[r'Groups'] = this.groups;
    if (this.privileges != null) {
      json[r'Privileges'] = this.privileges;
    } else {
      json[r'Privileges'] = null;
    }
    if (this.TTY != null) {
      json[r'TTY'] = this.TTY;
    } else {
      json[r'TTY'] = null;
    }
    if (this.openStdin != null) {
      json[r'OpenStdin'] = this.openStdin;
    } else {
      json[r'OpenStdin'] = null;
    }
    if (this.readOnly != null) {
      json[r'ReadOnly'] = this.readOnly;
    } else {
      json[r'ReadOnly'] = null;
    }
    json[r'Mounts'] = this.mounts;
    if (this.stopSignal != null) {
      json[r'StopSignal'] = this.stopSignal;
    } else {
      json[r'StopSignal'] = null;
    }
    if (this.stopGracePeriod != null) {
      json[r'StopGracePeriod'] = this.stopGracePeriod;
    } else {
      json[r'StopGracePeriod'] = null;
    }
    if (this.healthCheck != null) {
      json[r'HealthCheck'] = this.healthCheck;
    } else {
      json[r'HealthCheck'] = null;
    }
    json[r'Hosts'] = this.hosts;
    if (this.dNSConfig != null) {
      json[r'DNSConfig'] = this.dNSConfig;
    } else {
      json[r'DNSConfig'] = null;
    }
    json[r'Secrets'] = this.secrets;
    json[r'Configs'] = this.configs;
    if (this.isolation != null) {
      json[r'Isolation'] = this.isolation;
    } else {
      json[r'Isolation'] = null;
    }
    if (this.init != null) {
      json[r'Init'] = this.init;
    } else {
      json[r'Init'] = null;
    }
    json[r'Sysctls'] = this.sysctls;
    json[r'CapabilityAdd'] = this.capabilityAdd;
    json[r'CapabilityDrop'] = this.capabilityDrop;
    json[r'Ulimits'] = this.ulimits;
    return json;
  }

  /// Returns a new [TaskSpecContainerSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskSpecContainerSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TaskSpecContainerSpec[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TaskSpecContainerSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskSpecContainerSpec(
        image: mapValueOfType<String>(json, r'Image'),
        labels: mapCastOfType<String, String>(json, r'Labels') ?? const {},
        command: json[r'Command'] is Iterable
            ? (json[r'Command'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        args: json[r'Args'] is Iterable
            ? (json[r'Args'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        hostname: mapValueOfType<String>(json, r'Hostname'),
        env: json[r'Env'] is Iterable
            ? (json[r'Env'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        dir: mapValueOfType<String>(json, r'Dir'),
        user: mapValueOfType<String>(json, r'User'),
        groups: json[r'Groups'] is Iterable
            ? (json[r'Groups'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        privileges:
            TaskSpecContainerSpecPrivileges.fromJson(json[r'Privileges']),
        TTY: mapValueOfType<bool>(json, r'TTY'),
        openStdin: mapValueOfType<bool>(json, r'OpenStdin'),
        readOnly: mapValueOfType<bool>(json, r'ReadOnly'),
        mounts: Mount.listFromJson(json[r'Mounts']),
        stopSignal: mapValueOfType<String>(json, r'StopSignal'),
        stopGracePeriod: mapValueOfType<int>(json, r'StopGracePeriod'),
        healthCheck: HealthConfig.fromJson(json[r'HealthCheck']),
        hosts: json[r'Hosts'] is Iterable
            ? (json[r'Hosts'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        dNSConfig: TaskSpecContainerSpecDNSConfig.fromJson(json[r'DNSConfig']),
        secrets:
            TaskSpecContainerSpecSecretsInner.listFromJson(json[r'Secrets']),
        configs:
            TaskSpecContainerSpecConfigsInner.listFromJson(json[r'Configs']),
        isolation:
            TaskSpecContainerSpecIsolationEnum.fromJson(json[r'Isolation']),
        init: mapValueOfType<bool>(json, r'Init'),
        sysctls: mapCastOfType<String, String>(json, r'Sysctls') ?? const {},
        capabilityAdd: json[r'CapabilityAdd'] is Iterable
            ? (json[r'CapabilityAdd'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        capabilityDrop: json[r'CapabilityDrop'] is Iterable
            ? (json[r'CapabilityDrop'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        ulimits: ResourcesUlimitsInner.listFromJson(json[r'Ulimits']),
      );
    }
    return null;
  }

  static List<TaskSpecContainerSpec> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskSpecContainerSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskSpecContainerSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskSpecContainerSpec> mapFromJson(dynamic json) {
    final map = <String, TaskSpecContainerSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskSpecContainerSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskSpecContainerSpec-objects as value to a dart map
  static Map<String, List<TaskSpecContainerSpec>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TaskSpecContainerSpec>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskSpecContainerSpec.listFromJson(
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

/// Isolation technology of the containers running the service. (Windows only)
class TaskSpecContainerSpecIsolationEnum {
  /// Instantiate a new enum with the provided [value].
  const TaskSpecContainerSpecIsolationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const default_ = TaskSpecContainerSpecIsolationEnum._(r'default');
  static const process = TaskSpecContainerSpecIsolationEnum._(r'process');
  static const hyperv = TaskSpecContainerSpecIsolationEnum._(r'hyperv');

  /// List of all possible values in this [enum][TaskSpecContainerSpecIsolationEnum].
  static const values = <TaskSpecContainerSpecIsolationEnum>[
    default_,
    process,
    hyperv,
  ];

  static TaskSpecContainerSpecIsolationEnum? fromJson(dynamic value) =>
      TaskSpecContainerSpecIsolationEnumTypeTransformer().decode(value);

  static List<TaskSpecContainerSpecIsolationEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskSpecContainerSpecIsolationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskSpecContainerSpecIsolationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TaskSpecContainerSpecIsolationEnum] to String,
/// and [decode] dynamic data back to [TaskSpecContainerSpecIsolationEnum].
class TaskSpecContainerSpecIsolationEnumTypeTransformer {
  factory TaskSpecContainerSpecIsolationEnumTypeTransformer() =>
      _instance ??= const TaskSpecContainerSpecIsolationEnumTypeTransformer._();

  const TaskSpecContainerSpecIsolationEnumTypeTransformer._();

  String encode(TaskSpecContainerSpecIsolationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TaskSpecContainerSpecIsolationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TaskSpecContainerSpecIsolationEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'default':
          return TaskSpecContainerSpecIsolationEnum.default_;
        case r'process':
          return TaskSpecContainerSpecIsolationEnum.process;
        case r'hyperv':
          return TaskSpecContainerSpecIsolationEnum.hyperv;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TaskSpecContainerSpecIsolationEnumTypeTransformer] instance.
  static TaskSpecContainerSpecIsolationEnumTypeTransformer? _instance;
}

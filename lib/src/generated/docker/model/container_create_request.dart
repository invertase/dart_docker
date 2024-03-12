//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ContainerCreateRequest {
  /// Returns a new [ContainerCreateRequest] instance.
  ContainerCreateRequest({
    this.hostname,
    this.domainname,
    this.user,
    this.attachStdin = false,
    this.attachStdout = true,
    this.attachStderr = true,
    this.exposedPorts = const {},
    this.tty = false,
    this.openStdin = false,
    this.stdinOnce = false,
    this.env = const [],
    this.cmd = const [],
    this.healthcheck,
    this.argsEscaped = false,
    this.image,
    this.volumes = const {},
    this.workingDir,
    this.entrypoint = const [],
    this.networkDisabled,
    this.macAddress,
    this.onBuild = const [],
    this.labels = const {},
    this.stopSignal,
    this.stopTimeout,
    this.shell = const [],
    this.hostConfig,
    this.networkingConfig,
  });

  /// The hostname to use for the container, as a valid RFC 1123 hostname.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hostname;

  /// The domain name to use for the container.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainname;

  /// The user that commands are run as inside the container.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  /// Whether to attach to `stdin`.
  bool attachStdin;

  /// Whether to attach to `stdout`.
  bool attachStdout;

  /// Whether to attach to `stderr`.
  bool attachStderr;

  /// An object mapping ports to an empty object in the form:  `{\"<port>/<tcp|udp|sctp>\": {}}`
  Map<String, Object>? exposedPorts;

  /// Attach standard streams to a TTY, including `stdin` if it is not closed.
  bool tty;

  /// Open `stdin`
  bool openStdin;

  /// Close `stdin` after one attached client disconnects
  bool stdinOnce;

  /// A list of environment variables to set inside the container in the form `[\"VAR=value\", ...]`. A variable without `=` is removed from the environment, rather than to have an empty value.
  List<String> env;

  /// Command to run specified as a string or an array of strings.
  List<String> cmd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HealthConfig? healthcheck;

  /// Command is already escaped (Windows only)
  bool? argsEscaped;

  /// The name (or reference) of the image to use when creating the container, or which was used when the container was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  /// An object mapping mount point paths inside the container to empty objects.
  Map<String, Object> volumes;

  /// The working directory for commands to run in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workingDir;

  /// The entry point for the container as a string or an array of strings.  If the array consists of exactly one empty string (`[\"\"]`) then the entry point is reset to system default (i.e., the entry point used by docker when there is no `ENTRYPOINT` instruction in the `Dockerfile`).
  List<String> entrypoint;

  /// Disable networking for the container.
  bool? networkDisabled;

  /// MAC address of the container.  Deprecated: this field is deprecated in API v1.44 and up. Use EndpointSettings.MacAddress instead.
  String? macAddress;

  /// `ONBUILD` metadata that were defined in the image's `Dockerfile`.
  List<String>? onBuild;

  /// User-defined key/value metadata.
  Map<String, String> labels;

  /// Signal to stop a container as a string or unsigned integer.
  String? stopSignal;

  /// Timeout to stop a container in seconds.
  int? stopTimeout;

  /// Shell for when `RUN`, `CMD`, and `ENTRYPOINT` uses a shell.
  List<String>? shell;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HostConfig? hostConfig;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NetworkingConfig? networkingConfig;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContainerCreateRequest &&
          other.hostname == hostname &&
          other.domainname == domainname &&
          other.user == user &&
          other.attachStdin == attachStdin &&
          other.attachStdout == attachStdout &&
          other.attachStderr == attachStderr &&
          _deepEquality.equals(other.exposedPorts, exposedPorts) &&
          other.tty == tty &&
          other.openStdin == openStdin &&
          other.stdinOnce == stdinOnce &&
          _deepEquality.equals(other.env, env) &&
          _deepEquality.equals(other.cmd, cmd) &&
          other.healthcheck == healthcheck &&
          other.argsEscaped == argsEscaped &&
          other.image == image &&
          _deepEquality.equals(other.volumes, volumes) &&
          other.workingDir == workingDir &&
          _deepEquality.equals(other.entrypoint, entrypoint) &&
          other.networkDisabled == networkDisabled &&
          other.macAddress == macAddress &&
          _deepEquality.equals(other.onBuild, onBuild) &&
          _deepEquality.equals(other.labels, labels) &&
          other.stopSignal == stopSignal &&
          other.stopTimeout == stopTimeout &&
          _deepEquality.equals(other.shell, shell) &&
          other.hostConfig == hostConfig &&
          other.networkingConfig == networkingConfig;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (hostname == null ? 0 : hostname!.hashCode) +
      (domainname == null ? 0 : domainname!.hashCode) +
      (user == null ? 0 : user!.hashCode) +
      (attachStdin.hashCode) +
      (attachStdout.hashCode) +
      (attachStderr.hashCode) +
      (exposedPorts == null ? 0 : exposedPorts!.hashCode) +
      (tty.hashCode) +
      (openStdin.hashCode) +
      (stdinOnce.hashCode) +
      (env.hashCode) +
      (cmd.hashCode) +
      (healthcheck == null ? 0 : healthcheck!.hashCode) +
      (argsEscaped == null ? 0 : argsEscaped!.hashCode) +
      (image == null ? 0 : image!.hashCode) +
      (volumes.hashCode) +
      (workingDir == null ? 0 : workingDir!.hashCode) +
      (entrypoint.hashCode) +
      (networkDisabled == null ? 0 : networkDisabled!.hashCode) +
      (macAddress == null ? 0 : macAddress!.hashCode) +
      (onBuild == null ? 0 : onBuild!.hashCode) +
      (labels.hashCode) +
      (stopSignal == null ? 0 : stopSignal!.hashCode) +
      (stopTimeout == null ? 0 : stopTimeout!.hashCode) +
      (shell == null ? 0 : shell!.hashCode) +
      (hostConfig == null ? 0 : hostConfig!.hashCode) +
      (networkingConfig == null ? 0 : networkingConfig!.hashCode);

  @override
  String toString() =>
      'ContainerCreateRequest[hostname=$hostname, domainname=$domainname, user=$user, attachStdin=$attachStdin, attachStdout=$attachStdout, attachStderr=$attachStderr, exposedPorts=$exposedPorts, tty=$tty, openStdin=$openStdin, stdinOnce=$stdinOnce, env=$env, cmd=$cmd, healthcheck=$healthcheck, argsEscaped=$argsEscaped, image=$image, volumes=$volumes, workingDir=$workingDir, entrypoint=$entrypoint, networkDisabled=$networkDisabled, macAddress=$macAddress, onBuild=$onBuild, labels=$labels, stopSignal=$stopSignal, stopTimeout=$stopTimeout, shell=$shell, hostConfig=$hostConfig, networkingConfig=$networkingConfig]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.hostname != null) {
      json[r'Hostname'] = this.hostname;
    } else {
      json[r'Hostname'] = null;
    }
    if (this.domainname != null) {
      json[r'Domainname'] = this.domainname;
    } else {
      json[r'Domainname'] = null;
    }
    if (this.user != null) {
      json[r'User'] = this.user;
    } else {
      json[r'User'] = null;
    }
    json[r'AttachStdin'] = this.attachStdin;
    json[r'AttachStdout'] = this.attachStdout;
    json[r'AttachStderr'] = this.attachStderr;
    if (this.exposedPorts != null) {
      json[r'ExposedPorts'] = this.exposedPorts;
    } else {
      json[r'ExposedPorts'] = null;
    }
    json[r'Tty'] = this.tty;
    json[r'OpenStdin'] = this.openStdin;
    json[r'StdinOnce'] = this.stdinOnce;
    json[r'Env'] = this.env;
    json[r'Cmd'] = this.cmd;
    if (this.healthcheck != null) {
      json[r'Healthcheck'] = this.healthcheck;
    } else {
      json[r'Healthcheck'] = null;
    }
    if (this.argsEscaped != null) {
      json[r'ArgsEscaped'] = this.argsEscaped;
    } else {
      json[r'ArgsEscaped'] = null;
    }
    if (this.image != null) {
      json[r'Image'] = this.image;
    } else {
      json[r'Image'] = null;
    }
    json[r'Volumes'] = this.volumes;
    if (this.workingDir != null) {
      json[r'WorkingDir'] = this.workingDir;
    } else {
      json[r'WorkingDir'] = null;
    }
    json[r'Entrypoint'] = this.entrypoint;
    if (this.networkDisabled != null) {
      json[r'NetworkDisabled'] = this.networkDisabled;
    } else {
      json[r'NetworkDisabled'] = null;
    }
    if (this.macAddress != null) {
      json[r'MacAddress'] = this.macAddress;
    } else {
      json[r'MacAddress'] = null;
    }
    if (this.onBuild != null) {
      json[r'OnBuild'] = this.onBuild;
    } else {
      json[r'OnBuild'] = null;
    }
    json[r'Labels'] = this.labels;
    if (this.stopSignal != null) {
      json[r'StopSignal'] = this.stopSignal;
    } else {
      json[r'StopSignal'] = null;
    }
    if (this.stopTimeout != null) {
      json[r'StopTimeout'] = this.stopTimeout;
    } else {
      json[r'StopTimeout'] = null;
    }
    if (this.shell != null) {
      json[r'Shell'] = this.shell;
    } else {
      json[r'Shell'] = null;
    }
    if (this.hostConfig != null) {
      json[r'HostConfig'] = this.hostConfig;
    } else {
      json[r'HostConfig'] = null;
    }
    if (this.networkingConfig != null) {
      json[r'NetworkingConfig'] = this.networkingConfig;
    } else {
      json[r'NetworkingConfig'] = null;
    }
    return json;
  }

  /// Returns a new [ContainerCreateRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContainerCreateRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ContainerCreateRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ContainerCreateRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContainerCreateRequest(
        hostname: mapValueOfType<String>(json, r'Hostname'),
        domainname: mapValueOfType<String>(json, r'Domainname'),
        user: mapValueOfType<String>(json, r'User'),
        attachStdin: mapValueOfType<bool>(json, r'AttachStdin') ?? false,
        attachStdout: mapValueOfType<bool>(json, r'AttachStdout') ?? true,
        attachStderr: mapValueOfType<bool>(json, r'AttachStderr') ?? true,
        exposedPorts:
            mapCastOfType<String, Object>(json, r'ExposedPorts') ?? const {},
        tty: mapValueOfType<bool>(json, r'Tty') ?? false,
        openStdin: mapValueOfType<bool>(json, r'OpenStdin') ?? false,
        stdinOnce: mapValueOfType<bool>(json, r'StdinOnce') ?? false,
        env: json[r'Env'] is Iterable
            ? (json[r'Env'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        cmd: json[r'Cmd'] is Iterable
            ? (json[r'Cmd'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        healthcheck: HealthConfig.fromJson(json[r'Healthcheck']),
        argsEscaped: mapValueOfType<bool>(json, r'ArgsEscaped') ?? false,
        image: mapValueOfType<String>(json, r'Image'),
        volumes: mapCastOfType<String, Object>(json, r'Volumes') ?? const {},
        workingDir: mapValueOfType<String>(json, r'WorkingDir'),
        entrypoint: json[r'Entrypoint'] is Iterable
            ? (json[r'Entrypoint'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        networkDisabled: mapValueOfType<bool>(json, r'NetworkDisabled'),
        macAddress: mapValueOfType<String>(json, r'MacAddress'),
        onBuild: json[r'OnBuild'] is Iterable
            ? (json[r'OnBuild'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        labels: mapCastOfType<String, String>(json, r'Labels') ?? const {},
        stopSignal: mapValueOfType<String>(json, r'StopSignal'),
        stopTimeout: mapValueOfType<int>(json, r'StopTimeout'),
        shell: json[r'Shell'] is Iterable
            ? (json[r'Shell'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        hostConfig: HostConfig.fromJson(json[r'HostConfig']),
        networkingConfig: NetworkingConfig.fromJson(json[r'NetworkingConfig']),
      );
    }
    return null;
  }

  static List<ContainerCreateRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ContainerCreateRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContainerCreateRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContainerCreateRequest> mapFromJson(dynamic json) {
    final map = <String, ContainerCreateRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContainerCreateRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContainerCreateRequest-objects as value to a dart map
  static Map<String, List<ContainerCreateRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ContainerCreateRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContainerCreateRequest.listFromJson(
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

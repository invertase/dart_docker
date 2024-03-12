//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class PluginConfig {
  /// Returns a new [PluginConfig] instance.
  PluginConfig({
    this.dockerVersion,
    required this.description,
    required this.documentation,
    required this.interface_,
    this.entrypoint = const [],
    required this.workDir,
    this.user,
    required this.network,
    required this.linux,
    required this.propagatedMount,
    required this.ipcHost,
    required this.pidHost,
    this.mounts = const [],
    this.env = const [],
    required this.args,
    this.rootfs,
  });

  /// Docker Version used to create the plugin
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerVersion;

  String description;

  String documentation;

  PluginConfigInterface interface_;

  List<String> entrypoint;

  String workDir;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PluginConfigUser? user;

  PluginConfigNetwork network;

  PluginConfigLinux linux;

  String propagatedMount;

  bool ipcHost;

  bool pidHost;

  List<PluginMount> mounts;

  List<PluginEnv> env;

  PluginConfigArgs args;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PluginConfigRootfs? rootfs;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PluginConfig &&
          other.dockerVersion == dockerVersion &&
          other.description == description &&
          other.documentation == documentation &&
          other.interface_ == interface_ &&
          _deepEquality.equals(other.entrypoint, entrypoint) &&
          other.workDir == workDir &&
          other.user == user &&
          other.network == network &&
          other.linux == linux &&
          other.propagatedMount == propagatedMount &&
          other.ipcHost == ipcHost &&
          other.pidHost == pidHost &&
          _deepEquality.equals(other.mounts, mounts) &&
          _deepEquality.equals(other.env, env) &&
          other.args == args &&
          other.rootfs == rootfs;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (dockerVersion == null ? 0 : dockerVersion!.hashCode) +
      (description.hashCode) +
      (documentation.hashCode) +
      (interface_.hashCode) +
      (entrypoint.hashCode) +
      (workDir.hashCode) +
      (user == null ? 0 : user!.hashCode) +
      (network.hashCode) +
      (linux.hashCode) +
      (propagatedMount.hashCode) +
      (ipcHost.hashCode) +
      (pidHost.hashCode) +
      (mounts.hashCode) +
      (env.hashCode) +
      (args.hashCode) +
      (rootfs == null ? 0 : rootfs!.hashCode);

  @override
  String toString() =>
      'PluginConfig[dockerVersion=$dockerVersion, description=$description, documentation=$documentation, interface_=$interface_, entrypoint=$entrypoint, workDir=$workDir, user=$user, network=$network, linux=$linux, propagatedMount=$propagatedMount, ipcHost=$ipcHost, pidHost=$pidHost, mounts=$mounts, env=$env, args=$args, rootfs=$rootfs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dockerVersion != null) {
      json[r'DockerVersion'] = this.dockerVersion;
    } else {
      json[r'DockerVersion'] = null;
    }
    json[r'Description'] = this.description;
    json[r'Documentation'] = this.documentation;
    json[r'Interface'] = this.interface_;
    json[r'Entrypoint'] = this.entrypoint;
    json[r'WorkDir'] = this.workDir;
    if (this.user != null) {
      json[r'User'] = this.user;
    } else {
      json[r'User'] = null;
    }
    json[r'Network'] = this.network;
    json[r'Linux'] = this.linux;
    json[r'PropagatedMount'] = this.propagatedMount;
    json[r'IpcHost'] = this.ipcHost;
    json[r'PidHost'] = this.pidHost;
    json[r'Mounts'] = this.mounts;
    json[r'Env'] = this.env;
    json[r'Args'] = this.args;
    if (this.rootfs != null) {
      json[r'rootfs'] = this.rootfs;
    } else {
      json[r'rootfs'] = null;
    }
    return json;
  }

  /// Returns a new [PluginConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PluginConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PluginConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PluginConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PluginConfig(
        dockerVersion: mapValueOfType<String>(json, r'DockerVersion'),
        description: mapValueOfType<String>(json, r'Description')!,
        documentation: mapValueOfType<String>(json, r'Documentation')!,
        interface_: PluginConfigInterface.fromJson(json[r'Interface'])!,
        entrypoint: json[r'Entrypoint'] is Iterable
            ? (json[r'Entrypoint'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        workDir: mapValueOfType<String>(json, r'WorkDir')!,
        user: PluginConfigUser.fromJson(json[r'User']),
        network: PluginConfigNetwork.fromJson(json[r'Network'])!,
        linux: PluginConfigLinux.fromJson(json[r'Linux'])!,
        propagatedMount: mapValueOfType<String>(json, r'PropagatedMount')!,
        ipcHost: mapValueOfType<bool>(json, r'IpcHost')!,
        pidHost: mapValueOfType<bool>(json, r'PidHost')!,
        mounts: PluginMount.listFromJson(json[r'Mounts']),
        env: PluginEnv.listFromJson(json[r'Env']),
        args: PluginConfigArgs.fromJson(json[r'Args'])!,
        rootfs: PluginConfigRootfs.fromJson(json[r'rootfs']),
      );
    }
    return null;
  }

  static List<PluginConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PluginConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PluginConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PluginConfig> mapFromJson(dynamic json) {
    final map = <String, PluginConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PluginConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PluginConfig-objects as value to a dart map
  static Map<String, List<PluginConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PluginConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PluginConfig.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'Description',
    'Documentation',
    'Interface',
    'Entrypoint',
    'WorkDir',
    'Network',
    'Linux',
    'PropagatedMount',
    'IpcHost',
    'PidHost',
    'Mounts',
    'Env',
    'Args',
  };
}

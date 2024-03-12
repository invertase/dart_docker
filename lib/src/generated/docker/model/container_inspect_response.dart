//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ContainerInspectResponse {
  /// Returns a new [ContainerInspectResponse] instance.
  ContainerInspectResponse({
    this.id,
    this.created,
    this.path,
    this.args = const [],
    this.state,
    this.image,
    this.resolvConfPath,
    this.hostnamePath,
    this.hostsPath,
    this.logPath,
    this.name,
    this.restartCount,
    this.driver,
    this.platform,
    this.mountLabel,
    this.processLabel,
    this.appArmorProfile,
    this.execIDs = const [],
    this.hostConfig,
    this.graphDriver,
    this.sizeRw,
    this.sizeRootFs,
    this.mounts = const [],
    this.config,
    this.networkSettings,
  });

  /// The ID of the container
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The time the container was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// The path to the command being run
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// The arguments to the command being run
  List<String> args;

  ContainerState? state;

  /// The container's image ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resolvConfPath;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hostnamePath;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hostsPath;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logPath;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? restartCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? driver;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mountLabel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? processLabel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? appArmorProfile;

  /// IDs of exec instances that are running in the container.
  List<String>? execIDs;

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
  GraphDriverData? graphDriver;

  /// The size of files that have been created or changed by this container.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sizeRw;

  /// The total size of all the files in this container.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sizeRootFs;

  List<MountPoint> mounts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ContainerConfig? config;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NetworkSettings? networkSettings;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContainerInspectResponse &&
          other.id == id &&
          other.created == created &&
          other.path == path &&
          _deepEquality.equals(other.args, args) &&
          other.state == state &&
          other.image == image &&
          other.resolvConfPath == resolvConfPath &&
          other.hostnamePath == hostnamePath &&
          other.hostsPath == hostsPath &&
          other.logPath == logPath &&
          other.name == name &&
          other.restartCount == restartCount &&
          other.driver == driver &&
          other.platform == platform &&
          other.mountLabel == mountLabel &&
          other.processLabel == processLabel &&
          other.appArmorProfile == appArmorProfile &&
          _deepEquality.equals(other.execIDs, execIDs) &&
          other.hostConfig == hostConfig &&
          other.graphDriver == graphDriver &&
          other.sizeRw == sizeRw &&
          other.sizeRootFs == sizeRootFs &&
          _deepEquality.equals(other.mounts, mounts) &&
          other.config == config &&
          other.networkSettings == networkSettings;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (created == null ? 0 : created!.hashCode) +
      (path == null ? 0 : path!.hashCode) +
      (args.hashCode) +
      (state == null ? 0 : state!.hashCode) +
      (image == null ? 0 : image!.hashCode) +
      (resolvConfPath == null ? 0 : resolvConfPath!.hashCode) +
      (hostnamePath == null ? 0 : hostnamePath!.hashCode) +
      (hostsPath == null ? 0 : hostsPath!.hashCode) +
      (logPath == null ? 0 : logPath!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (restartCount == null ? 0 : restartCount!.hashCode) +
      (driver == null ? 0 : driver!.hashCode) +
      (platform == null ? 0 : platform!.hashCode) +
      (mountLabel == null ? 0 : mountLabel!.hashCode) +
      (processLabel == null ? 0 : processLabel!.hashCode) +
      (appArmorProfile == null ? 0 : appArmorProfile!.hashCode) +
      (execIDs == null ? 0 : execIDs!.hashCode) +
      (hostConfig == null ? 0 : hostConfig!.hashCode) +
      (graphDriver == null ? 0 : graphDriver!.hashCode) +
      (sizeRw == null ? 0 : sizeRw!.hashCode) +
      (sizeRootFs == null ? 0 : sizeRootFs!.hashCode) +
      (mounts.hashCode) +
      (config == null ? 0 : config!.hashCode) +
      (networkSettings == null ? 0 : networkSettings!.hashCode);

  @override
  String toString() =>
      'ContainerInspectResponse[id=$id, created=$created, path=$path, args=$args, state=$state, image=$image, resolvConfPath=$resolvConfPath, hostnamePath=$hostnamePath, hostsPath=$hostsPath, logPath=$logPath, name=$name, restartCount=$restartCount, driver=$driver, platform=$platform, mountLabel=$mountLabel, processLabel=$processLabel, appArmorProfile=$appArmorProfile, execIDs=$execIDs, hostConfig=$hostConfig, graphDriver=$graphDriver, sizeRw=$sizeRw, sizeRootFs=$sizeRootFs, mounts=$mounts, config=$config, networkSettings=$networkSettings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'Id'] = this.id;
    } else {
      json[r'Id'] = null;
    }
    if (this.created != null) {
      json[r'Created'] = this.created;
    } else {
      json[r'Created'] = null;
    }
    if (this.path != null) {
      json[r'Path'] = this.path;
    } else {
      json[r'Path'] = null;
    }
    json[r'Args'] = this.args;
    if (this.state != null) {
      json[r'State'] = this.state;
    } else {
      json[r'State'] = null;
    }
    if (this.image != null) {
      json[r'Image'] = this.image;
    } else {
      json[r'Image'] = null;
    }
    if (this.resolvConfPath != null) {
      json[r'ResolvConfPath'] = this.resolvConfPath;
    } else {
      json[r'ResolvConfPath'] = null;
    }
    if (this.hostnamePath != null) {
      json[r'HostnamePath'] = this.hostnamePath;
    } else {
      json[r'HostnamePath'] = null;
    }
    if (this.hostsPath != null) {
      json[r'HostsPath'] = this.hostsPath;
    } else {
      json[r'HostsPath'] = null;
    }
    if (this.logPath != null) {
      json[r'LogPath'] = this.logPath;
    } else {
      json[r'LogPath'] = null;
    }
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    if (this.restartCount != null) {
      json[r'RestartCount'] = this.restartCount;
    } else {
      json[r'RestartCount'] = null;
    }
    if (this.driver != null) {
      json[r'Driver'] = this.driver;
    } else {
      json[r'Driver'] = null;
    }
    if (this.platform != null) {
      json[r'Platform'] = this.platform;
    } else {
      json[r'Platform'] = null;
    }
    if (this.mountLabel != null) {
      json[r'MountLabel'] = this.mountLabel;
    } else {
      json[r'MountLabel'] = null;
    }
    if (this.processLabel != null) {
      json[r'ProcessLabel'] = this.processLabel;
    } else {
      json[r'ProcessLabel'] = null;
    }
    if (this.appArmorProfile != null) {
      json[r'AppArmorProfile'] = this.appArmorProfile;
    } else {
      json[r'AppArmorProfile'] = null;
    }
    if (this.execIDs != null) {
      json[r'ExecIDs'] = this.execIDs;
    } else {
      json[r'ExecIDs'] = null;
    }
    if (this.hostConfig != null) {
      json[r'HostConfig'] = this.hostConfig;
    } else {
      json[r'HostConfig'] = null;
    }
    if (this.graphDriver != null) {
      json[r'GraphDriver'] = this.graphDriver;
    } else {
      json[r'GraphDriver'] = null;
    }
    if (this.sizeRw != null) {
      json[r'SizeRw'] = this.sizeRw;
    } else {
      json[r'SizeRw'] = null;
    }
    if (this.sizeRootFs != null) {
      json[r'SizeRootFs'] = this.sizeRootFs;
    } else {
      json[r'SizeRootFs'] = null;
    }
    json[r'Mounts'] = this.mounts;
    if (this.config != null) {
      json[r'Config'] = this.config;
    } else {
      json[r'Config'] = null;
    }
    if (this.networkSettings != null) {
      json[r'NetworkSettings'] = this.networkSettings;
    } else {
      json[r'NetworkSettings'] = null;
    }
    return json;
  }

  /// Returns a new [ContainerInspectResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContainerInspectResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ContainerInspectResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ContainerInspectResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContainerInspectResponse(
        id: mapValueOfType<String>(json, r'Id'),
        created: mapValueOfType<String>(json, r'Created'),
        path: mapValueOfType<String>(json, r'Path'),
        args: json[r'Args'] is Iterable
            ? (json[r'Args'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        state: ContainerState.fromJson(json[r'State']),
        image: mapValueOfType<String>(json, r'Image'),
        resolvConfPath: mapValueOfType<String>(json, r'ResolvConfPath'),
        hostnamePath: mapValueOfType<String>(json, r'HostnamePath'),
        hostsPath: mapValueOfType<String>(json, r'HostsPath'),
        logPath: mapValueOfType<String>(json, r'LogPath'),
        name: mapValueOfType<String>(json, r'Name'),
        restartCount: mapValueOfType<int>(json, r'RestartCount'),
        driver: mapValueOfType<String>(json, r'Driver'),
        platform: mapValueOfType<String>(json, r'Platform'),
        mountLabel: mapValueOfType<String>(json, r'MountLabel'),
        processLabel: mapValueOfType<String>(json, r'ProcessLabel'),
        appArmorProfile: mapValueOfType<String>(json, r'AppArmorProfile'),
        execIDs: json[r'ExecIDs'] is Iterable
            ? (json[r'ExecIDs'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        hostConfig: HostConfig.fromJson(json[r'HostConfig']),
        graphDriver: GraphDriverData.fromJson(json[r'GraphDriver']),
        sizeRw: mapValueOfType<int>(json, r'SizeRw'),
        sizeRootFs: mapValueOfType<int>(json, r'SizeRootFs'),
        mounts: MountPoint.listFromJson(json[r'Mounts']),
        config: ContainerConfig.fromJson(json[r'Config']),
        networkSettings: NetworkSettings.fromJson(json[r'NetworkSettings']),
      );
    }
    return null;
  }

  static List<ContainerInspectResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ContainerInspectResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContainerInspectResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContainerInspectResponse> mapFromJson(dynamic json) {
    final map = <String, ContainerInspectResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContainerInspectResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContainerInspectResponse-objects as value to a dart map
  static Map<String, List<ContainerInspectResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ContainerInspectResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContainerInspectResponse.listFromJson(
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

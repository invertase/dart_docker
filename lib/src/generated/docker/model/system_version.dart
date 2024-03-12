//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class SystemVersion {
  /// Returns a new [SystemVersion] instance.
  SystemVersion({
    this.platform,
    this.components = const [],
    this.version,
    this.apiVersion,
    this.minAPIVersion,
    this.gitCommit,
    this.goVersion,
    this.os,
    this.arch,
    this.kernelVersion,
    this.experimental,
    this.buildTime,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SystemVersionPlatform? platform;

  /// Information about system components
  List<SystemVersionComponentsInner> components;

  /// The version of the daemon
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  /// The default (and highest) API version that is supported by the daemon
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apiVersion;

  /// The minimum API version that is supported by the daemon
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? minAPIVersion;

  /// The Git commit of the source code that was used to build the daemon
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gitCommit;

  /// The version Go used to compile the daemon, and the version of the Go runtime in use.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? goVersion;

  /// The operating system that the daemon is running on (\"linux\" or \"windows\")
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? os;

  /// The architecture that the daemon is running on
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? arch;

  /// The kernel version (`uname -r`) that the daemon is running on.  This field is omitted when empty.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kernelVersion;

  /// Indicates if the daemon is started with experimental features enabled.  This field is omitted when empty / false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? experimental;

  /// The date and time that the daemon was compiled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buildTime;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SystemVersion &&
          other.platform == platform &&
          _deepEquality.equals(other.components, components) &&
          other.version == version &&
          other.apiVersion == apiVersion &&
          other.minAPIVersion == minAPIVersion &&
          other.gitCommit == gitCommit &&
          other.goVersion == goVersion &&
          other.os == os &&
          other.arch == arch &&
          other.kernelVersion == kernelVersion &&
          other.experimental == experimental &&
          other.buildTime == buildTime;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (platform == null ? 0 : platform!.hashCode) +
      (components.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (apiVersion == null ? 0 : apiVersion!.hashCode) +
      (minAPIVersion == null ? 0 : minAPIVersion!.hashCode) +
      (gitCommit == null ? 0 : gitCommit!.hashCode) +
      (goVersion == null ? 0 : goVersion!.hashCode) +
      (os == null ? 0 : os!.hashCode) +
      (arch == null ? 0 : arch!.hashCode) +
      (kernelVersion == null ? 0 : kernelVersion!.hashCode) +
      (experimental == null ? 0 : experimental!.hashCode) +
      (buildTime == null ? 0 : buildTime!.hashCode);

  @override
  String toString() =>
      'SystemVersion[platform=$platform, components=$components, version=$version, apiVersion=$apiVersion, minAPIVersion=$minAPIVersion, gitCommit=$gitCommit, goVersion=$goVersion, os=$os, arch=$arch, kernelVersion=$kernelVersion, experimental=$experimental, buildTime=$buildTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.platform != null) {
      json[r'Platform'] = this.platform;
    } else {
      json[r'Platform'] = null;
    }
    json[r'Components'] = this.components;
    if (this.version != null) {
      json[r'Version'] = this.version;
    } else {
      json[r'Version'] = null;
    }
    if (this.apiVersion != null) {
      json[r'ApiVersion'] = this.apiVersion;
    } else {
      json[r'ApiVersion'] = null;
    }
    if (this.minAPIVersion != null) {
      json[r'MinAPIVersion'] = this.minAPIVersion;
    } else {
      json[r'MinAPIVersion'] = null;
    }
    if (this.gitCommit != null) {
      json[r'GitCommit'] = this.gitCommit;
    } else {
      json[r'GitCommit'] = null;
    }
    if (this.goVersion != null) {
      json[r'GoVersion'] = this.goVersion;
    } else {
      json[r'GoVersion'] = null;
    }
    if (this.os != null) {
      json[r'Os'] = this.os;
    } else {
      json[r'Os'] = null;
    }
    if (this.arch != null) {
      json[r'Arch'] = this.arch;
    } else {
      json[r'Arch'] = null;
    }
    if (this.kernelVersion != null) {
      json[r'KernelVersion'] = this.kernelVersion;
    } else {
      json[r'KernelVersion'] = null;
    }
    if (this.experimental != null) {
      json[r'Experimental'] = this.experimental;
    } else {
      json[r'Experimental'] = null;
    }
    if (this.buildTime != null) {
      json[r'BuildTime'] = this.buildTime;
    } else {
      json[r'BuildTime'] = null;
    }
    return json;
  }

  /// Returns a new [SystemVersion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SystemVersion? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SystemVersion[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SystemVersion[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SystemVersion(
        platform: SystemVersionPlatform.fromJson(json[r'Platform']),
        components:
            SystemVersionComponentsInner.listFromJson(json[r'Components']),
        version: mapValueOfType<String>(json, r'Version'),
        apiVersion: mapValueOfType<String>(json, r'ApiVersion'),
        minAPIVersion: mapValueOfType<String>(json, r'MinAPIVersion'),
        gitCommit: mapValueOfType<String>(json, r'GitCommit'),
        goVersion: mapValueOfType<String>(json, r'GoVersion'),
        os: mapValueOfType<String>(json, r'Os'),
        arch: mapValueOfType<String>(json, r'Arch'),
        kernelVersion: mapValueOfType<String>(json, r'KernelVersion'),
        experimental: mapValueOfType<bool>(json, r'Experimental'),
        buildTime: mapValueOfType<String>(json, r'BuildTime'),
      );
    }
    return null;
  }

  static List<SystemVersion> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SystemVersion>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SystemVersion.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SystemVersion> mapFromJson(dynamic json) {
    final map = <String, SystemVersion>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SystemVersion.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SystemVersion-objects as value to a dart map
  static Map<String, List<SystemVersion>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SystemVersion>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SystemVersion.listFromJson(
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

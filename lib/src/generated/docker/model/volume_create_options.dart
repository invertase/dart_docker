//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class VolumeCreateOptions {
  /// Returns a new [VolumeCreateOptions] instance.
  VolumeCreateOptions({
    this.name,
    this.driver = 'local',
    this.driverOpts = const {},
    this.labels = const {},
    this.clusterVolumeSpec,
  });

  /// The new volume's name. If not specified, Docker generates a name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Name of the volume driver to use.
  String driver;

  /// A mapping of driver options and values. These options are passed directly to the driver and are driver specific.
  Map<String, String> driverOpts;

  /// User-defined key/value metadata.
  Map<String, String> labels;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ClusterVolumeSpec? clusterVolumeSpec;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VolumeCreateOptions &&
          other.name == name &&
          other.driver == driver &&
          _deepEquality.equals(other.driverOpts, driverOpts) &&
          _deepEquality.equals(other.labels, labels) &&
          other.clusterVolumeSpec == clusterVolumeSpec;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) +
      (driver.hashCode) +
      (driverOpts.hashCode) +
      (labels.hashCode) +
      (clusterVolumeSpec == null ? 0 : clusterVolumeSpec!.hashCode);

  @override
  String toString() =>
      'VolumeCreateOptions[name=$name, driver=$driver, driverOpts=$driverOpts, labels=$labels, clusterVolumeSpec=$clusterVolumeSpec]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    json[r'Driver'] = this.driver;
    json[r'DriverOpts'] = this.driverOpts;
    json[r'Labels'] = this.labels;
    if (this.clusterVolumeSpec != null) {
      json[r'ClusterVolumeSpec'] = this.clusterVolumeSpec;
    } else {
      json[r'ClusterVolumeSpec'] = null;
    }
    return json;
  }

  /// Returns a new [VolumeCreateOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VolumeCreateOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "VolumeCreateOptions[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "VolumeCreateOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VolumeCreateOptions(
        name: mapValueOfType<String>(json, r'Name'),
        driver: mapValueOfType<String>(json, r'Driver') ?? 'local',
        driverOpts:
            mapCastOfType<String, String>(json, r'DriverOpts') ?? const {},
        labels: mapCastOfType<String, String>(json, r'Labels') ?? const {},
        clusterVolumeSpec:
            ClusterVolumeSpec.fromJson(json[r'ClusterVolumeSpec']),
      );
    }
    return null;
  }

  static List<VolumeCreateOptions> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <VolumeCreateOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VolumeCreateOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VolumeCreateOptions> mapFromJson(dynamic json) {
    final map = <String, VolumeCreateOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VolumeCreateOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VolumeCreateOptions-objects as value to a dart map
  static Map<String, List<VolumeCreateOptions>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<VolumeCreateOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VolumeCreateOptions.listFromJson(
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

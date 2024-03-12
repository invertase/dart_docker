//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class DeviceMapping {
  /// Returns a new [DeviceMapping] instance.
  DeviceMapping({
    this.pathOnHost,
    this.pathInContainer,
    this.cgroupPermissions,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pathOnHost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pathInContainer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cgroupPermissions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceMapping &&
          other.pathOnHost == pathOnHost &&
          other.pathInContainer == pathInContainer &&
          other.cgroupPermissions == cgroupPermissions;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (pathOnHost == null ? 0 : pathOnHost!.hashCode) +
      (pathInContainer == null ? 0 : pathInContainer!.hashCode) +
      (cgroupPermissions == null ? 0 : cgroupPermissions!.hashCode);

  @override
  String toString() =>
      'DeviceMapping[pathOnHost=$pathOnHost, pathInContainer=$pathInContainer, cgroupPermissions=$cgroupPermissions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.pathOnHost != null) {
      json[r'PathOnHost'] = this.pathOnHost;
    } else {
      json[r'PathOnHost'] = null;
    }
    if (this.pathInContainer != null) {
      json[r'PathInContainer'] = this.pathInContainer;
    } else {
      json[r'PathInContainer'] = null;
    }
    if (this.cgroupPermissions != null) {
      json[r'CgroupPermissions'] = this.cgroupPermissions;
    } else {
      json[r'CgroupPermissions'] = null;
    }
    return json;
  }

  /// Returns a new [DeviceMapping] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeviceMapping? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DeviceMapping[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DeviceMapping[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeviceMapping(
        pathOnHost: mapValueOfType<String>(json, r'PathOnHost'),
        pathInContainer: mapValueOfType<String>(json, r'PathInContainer'),
        cgroupPermissions: mapValueOfType<String>(json, r'CgroupPermissions'),
      );
    }
    return null;
  }

  static List<DeviceMapping> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DeviceMapping>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeviceMapping.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeviceMapping> mapFromJson(dynamic json) {
    final map = <String, DeviceMapping>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeviceMapping.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeviceMapping-objects as value to a dart map
  static Map<String, List<DeviceMapping>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DeviceMapping>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeviceMapping.listFromJson(
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ClusterVolumeInfo {
  /// Returns a new [ClusterVolumeInfo] instance.
  ClusterVolumeInfo({
    this.capacityBytes,
    this.volumeContext = const {},
    this.volumeID,
    this.accessibleTopology = const [],
  });

  /// The capacity of the volume in bytes. A value of 0 indicates that the capacity is unknown.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? capacityBytes;

  /// A map of strings to strings returned from the storage plugin when the volume is created.
  Map<String, String> volumeContext;

  /// The ID of the volume as returned by the CSI storage plugin. This is distinct from the volume's ID as provided by Docker. This ID is never used by the user when communicating with Docker to refer to this volume. If the ID is blank, then the Volume has not been successfully created in the plugin yet.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? volumeID;

  /// The topology this volume is actually accessible from.
  List<Map<String, String>> accessibleTopology;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClusterVolumeInfo &&
          other.capacityBytes == capacityBytes &&
          _deepEquality.equals(other.volumeContext, volumeContext) &&
          other.volumeID == volumeID &&
          _deepEquality.equals(other.accessibleTopology, accessibleTopology);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (capacityBytes == null ? 0 : capacityBytes!.hashCode) +
      (volumeContext.hashCode) +
      (volumeID == null ? 0 : volumeID!.hashCode) +
      (accessibleTopology.hashCode);

  @override
  String toString() =>
      'ClusterVolumeInfo[capacityBytes=$capacityBytes, volumeContext=$volumeContext, volumeID=$volumeID, accessibleTopology=$accessibleTopology]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.capacityBytes != null) {
      json[r'CapacityBytes'] = this.capacityBytes;
    } else {
      json[r'CapacityBytes'] = null;
    }
    json[r'VolumeContext'] = this.volumeContext;
    if (this.volumeID != null) {
      json[r'VolumeID'] = this.volumeID;
    } else {
      json[r'VolumeID'] = null;
    }
    json[r'AccessibleTopology'] = this.accessibleTopology;
    return json;
  }

  /// Returns a new [ClusterVolumeInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClusterVolumeInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ClusterVolumeInfo[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ClusterVolumeInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClusterVolumeInfo(
        capacityBytes: mapValueOfType<int>(json, r'CapacityBytes'),
        volumeContext:
            mapCastOfType<String, String>(json, r'VolumeContext') ?? const {},
        volumeID: mapValueOfType<String>(json, r'VolumeID'),
        accessibleTopology: List.from(json[r'AccessibleTopology'] ?? []),
      );
    }
    return null;
  }

  static List<ClusterVolumeInfo> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ClusterVolumeInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterVolumeInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClusterVolumeInfo> mapFromJson(dynamic json) {
    final map = <String, ClusterVolumeInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClusterVolumeInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClusterVolumeInfo-objects as value to a dart map
  static Map<String, List<ClusterVolumeInfo>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ClusterVolumeInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClusterVolumeInfo.listFromJson(
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

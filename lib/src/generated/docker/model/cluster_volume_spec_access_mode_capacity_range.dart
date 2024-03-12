//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ClusterVolumeSpecAccessModeCapacityRange {
  /// Returns a new [ClusterVolumeSpecAccessModeCapacityRange] instance.
  ClusterVolumeSpecAccessModeCapacityRange({
    this.requiredBytes,
    this.limitBytes,
  });

  /// The volume must be at least this big. The value of 0 indicates an unspecified minimum
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requiredBytes;

  /// The volume must not be bigger than this. The value of 0 indicates an unspecified maximum.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limitBytes;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClusterVolumeSpecAccessModeCapacityRange &&
          other.requiredBytes == requiredBytes &&
          other.limitBytes == limitBytes;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (requiredBytes == null ? 0 : requiredBytes!.hashCode) +
      (limitBytes == null ? 0 : limitBytes!.hashCode);

  @override
  String toString() =>
      'ClusterVolumeSpecAccessModeCapacityRange[requiredBytes=$requiredBytes, limitBytes=$limitBytes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.requiredBytes != null) {
      json[r'RequiredBytes'] = this.requiredBytes;
    } else {
      json[r'RequiredBytes'] = null;
    }
    if (this.limitBytes != null) {
      json[r'LimitBytes'] = this.limitBytes;
    } else {
      json[r'LimitBytes'] = null;
    }
    return json;
  }

  /// Returns a new [ClusterVolumeSpecAccessModeCapacityRange] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClusterVolumeSpecAccessModeCapacityRange? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ClusterVolumeSpecAccessModeCapacityRange[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ClusterVolumeSpecAccessModeCapacityRange[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClusterVolumeSpecAccessModeCapacityRange(
        requiredBytes: mapValueOfType<int>(json, r'RequiredBytes'),
        limitBytes: mapValueOfType<int>(json, r'LimitBytes'),
      );
    }
    return null;
  }

  static List<ClusterVolumeSpecAccessModeCapacityRange> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ClusterVolumeSpecAccessModeCapacityRange>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterVolumeSpecAccessModeCapacityRange.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClusterVolumeSpecAccessModeCapacityRange> mapFromJson(
      dynamic json) {
    final map = <String, ClusterVolumeSpecAccessModeCapacityRange>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            ClusterVolumeSpecAccessModeCapacityRange.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClusterVolumeSpecAccessModeCapacityRange-objects as value to a dart map
  static Map<String, List<ClusterVolumeSpecAccessModeCapacityRange>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ClusterVolumeSpecAccessModeCapacityRange>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClusterVolumeSpecAccessModeCapacityRange.listFromJson(
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

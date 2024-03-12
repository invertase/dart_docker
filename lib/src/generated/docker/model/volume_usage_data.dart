//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class VolumeUsageData {
  /// Returns a new [VolumeUsageData] instance.
  VolumeUsageData({
    this.size = -1,
    this.refCount = -1,
  });

  /// Amount of disk space used by the volume (in bytes). This information is only available for volumes created with the `\"local\"` volume driver. For volumes created with other volume drivers, this field is set to `-1` (\"not available\")
  int size;

  /// The number of containers referencing this volume. This field is set to `-1` if the reference-count is not available.
  int refCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VolumeUsageData &&
          other.size == size &&
          other.refCount == refCount;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (size.hashCode) + (refCount.hashCode);

  @override
  String toString() => 'VolumeUsageData[size=$size, refCount=$refCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Size'] = this.size;
    json[r'RefCount'] = this.refCount;
    return json;
  }

  /// Returns a new [VolumeUsageData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VolumeUsageData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "VolumeUsageData[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "VolumeUsageData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VolumeUsageData(
        size: mapValueOfType<int>(json, r'Size')!,
        refCount: mapValueOfType<int>(json, r'RefCount')!,
      );
    }
    return null;
  }

  static List<VolumeUsageData> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <VolumeUsageData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VolumeUsageData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VolumeUsageData> mapFromJson(dynamic json) {
    final map = <String, VolumeUsageData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VolumeUsageData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VolumeUsageData-objects as value to a dart map
  static Map<String, List<VolumeUsageData>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<VolumeUsageData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VolumeUsageData.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'Size',
    'RefCount',
  };
}

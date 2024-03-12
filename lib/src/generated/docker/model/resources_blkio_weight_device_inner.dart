//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ResourcesBlkioWeightDeviceInner {
  /// Returns a new [ResourcesBlkioWeightDeviceInner] instance.
  ResourcesBlkioWeightDeviceInner({
    this.path,
    this.weight,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// Minimum value: 0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? weight;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResourcesBlkioWeightDeviceInner &&
          other.path == path &&
          other.weight == weight;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (path == null ? 0 : path!.hashCode) +
      (weight == null ? 0 : weight!.hashCode);

  @override
  String toString() =>
      'ResourcesBlkioWeightDeviceInner[path=$path, weight=$weight]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.path != null) {
      json[r'Path'] = this.path;
    } else {
      json[r'Path'] = null;
    }
    if (this.weight != null) {
      json[r'Weight'] = this.weight;
    } else {
      json[r'Weight'] = null;
    }
    return json;
  }

  /// Returns a new [ResourcesBlkioWeightDeviceInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResourcesBlkioWeightDeviceInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ResourcesBlkioWeightDeviceInner[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ResourcesBlkioWeightDeviceInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ResourcesBlkioWeightDeviceInner(
        path: mapValueOfType<String>(json, r'Path'),
        weight: mapValueOfType<int>(json, r'Weight'),
      );
    }
    return null;
  }

  static List<ResourcesBlkioWeightDeviceInner> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ResourcesBlkioWeightDeviceInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResourcesBlkioWeightDeviceInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResourcesBlkioWeightDeviceInner> mapFromJson(
      dynamic json) {
    final map = <String, ResourcesBlkioWeightDeviceInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResourcesBlkioWeightDeviceInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResourcesBlkioWeightDeviceInner-objects as value to a dart map
  static Map<String, List<ResourcesBlkioWeightDeviceInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ResourcesBlkioWeightDeviceInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResourcesBlkioWeightDeviceInner.listFromJson(
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

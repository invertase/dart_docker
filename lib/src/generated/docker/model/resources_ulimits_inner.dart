//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ResourcesUlimitsInner {
  /// Returns a new [ResourcesUlimitsInner] instance.
  ResourcesUlimitsInner({
    this.name,
    this.soft,
    this.hard,
  });

  /// Name of ulimit
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Soft limit
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? soft;

  /// Hard limit
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? hard;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResourcesUlimitsInner &&
          other.name == name &&
          other.soft == soft &&
          other.hard == hard;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) +
      (soft == null ? 0 : soft!.hashCode) +
      (hard == null ? 0 : hard!.hashCode);

  @override
  String toString() =>
      'ResourcesUlimitsInner[name=$name, soft=$soft, hard=$hard]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    if (this.soft != null) {
      json[r'Soft'] = this.soft;
    } else {
      json[r'Soft'] = null;
    }
    if (this.hard != null) {
      json[r'Hard'] = this.hard;
    } else {
      json[r'Hard'] = null;
    }
    return json;
  }

  /// Returns a new [ResourcesUlimitsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResourcesUlimitsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ResourcesUlimitsInner[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ResourcesUlimitsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ResourcesUlimitsInner(
        name: mapValueOfType<String>(json, r'Name'),
        soft: mapValueOfType<int>(json, r'Soft'),
        hard: mapValueOfType<int>(json, r'Hard'),
      );
    }
    return null;
  }

  static List<ResourcesUlimitsInner> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ResourcesUlimitsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResourcesUlimitsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResourcesUlimitsInner> mapFromJson(dynamic json) {
    final map = <String, ResourcesUlimitsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResourcesUlimitsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResourcesUlimitsInner-objects as value to a dart map
  static Map<String, List<ResourcesUlimitsInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ResourcesUlimitsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResourcesUlimitsInner.listFromJson(
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

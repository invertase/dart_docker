//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ClusterVolumeSpec {
  /// Returns a new [ClusterVolumeSpec] instance.
  ClusterVolumeSpec({
    this.group,
    this.accessMode,
  });

  /// Group defines the volume group of this volume. Volumes belonging to the same group can be referred to by group name when creating Services.  Referring to a volume by group instructs Swarm to treat volumes in that group interchangeably for the purpose of scheduling. Volumes with an empty string for a group technically all belong to the same, emptystring group.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? group;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ClusterVolumeSpecAccessMode? accessMode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClusterVolumeSpec &&
          other.group == group &&
          other.accessMode == accessMode;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (group == null ? 0 : group!.hashCode) +
      (accessMode == null ? 0 : accessMode!.hashCode);

  @override
  String toString() =>
      'ClusterVolumeSpec[group=$group, accessMode=$accessMode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.group != null) {
      json[r'Group'] = this.group;
    } else {
      json[r'Group'] = null;
    }
    if (this.accessMode != null) {
      json[r'AccessMode'] = this.accessMode;
    } else {
      json[r'AccessMode'] = null;
    }
    return json;
  }

  /// Returns a new [ClusterVolumeSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClusterVolumeSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ClusterVolumeSpec[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ClusterVolumeSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClusterVolumeSpec(
        group: mapValueOfType<String>(json, r'Group'),
        accessMode: ClusterVolumeSpecAccessMode.fromJson(json[r'AccessMode']),
      );
    }
    return null;
  }

  static List<ClusterVolumeSpec> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ClusterVolumeSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterVolumeSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClusterVolumeSpec> mapFromJson(dynamic json) {
    final map = <String, ClusterVolumeSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClusterVolumeSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClusterVolumeSpec-objects as value to a dart map
  static Map<String, List<ClusterVolumeSpec>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ClusterVolumeSpec>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClusterVolumeSpec.listFromJson(
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

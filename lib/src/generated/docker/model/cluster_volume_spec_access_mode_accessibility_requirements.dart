//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ClusterVolumeSpecAccessModeAccessibilityRequirements {
  /// Returns a new [ClusterVolumeSpecAccessModeAccessibilityRequirements] instance.
  ClusterVolumeSpecAccessModeAccessibilityRequirements({
    this.requisite = const [],
    this.preferred = const [],
  });

  /// A list of required topologies, at least one of which the volume must be accessible from.
  List<Map<String, String>> requisite;

  /// A list of topologies that the volume should attempt to be provisioned in.
  List<Map<String, String>> preferred;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClusterVolumeSpecAccessModeAccessibilityRequirements &&
          _deepEquality.equals(other.requisite, requisite) &&
          _deepEquality.equals(other.preferred, preferred);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (requisite.hashCode) + (preferred.hashCode);

  @override
  String toString() =>
      'ClusterVolumeSpecAccessModeAccessibilityRequirements[requisite=$requisite, preferred=$preferred]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Requisite'] = this.requisite;
    json[r'Preferred'] = this.preferred;
    return json;
  }

  /// Returns a new [ClusterVolumeSpecAccessModeAccessibilityRequirements] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClusterVolumeSpecAccessModeAccessibilityRequirements? fromJson(
      dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ClusterVolumeSpecAccessModeAccessibilityRequirements[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ClusterVolumeSpecAccessModeAccessibilityRequirements[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClusterVolumeSpecAccessModeAccessibilityRequirements(
        requisite: List.from(json[r'Requisite'] ?? []),
        preferred: List.from(json[r'Preferred'] ?? []),
      );
    }
    return null;
  }

  static List<ClusterVolumeSpecAccessModeAccessibilityRequirements>
      listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ClusterVolumeSpecAccessModeAccessibilityRequirements>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value =
            ClusterVolumeSpecAccessModeAccessibilityRequirements.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClusterVolumeSpecAccessModeAccessibilityRequirements>
      mapFromJson(dynamic json) {
    final map =
        <String, ClusterVolumeSpecAccessModeAccessibilityRequirements>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            ClusterVolumeSpecAccessModeAccessibilityRequirements.fromJson(
                entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClusterVolumeSpecAccessModeAccessibilityRequirements-objects as value to a dart map
  static Map<String, List<ClusterVolumeSpecAccessModeAccessibilityRequirements>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map =
        <String, List<ClusterVolumeSpecAccessModeAccessibilityRequirements>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] =
            ClusterVolumeSpecAccessModeAccessibilityRequirements.listFromJson(
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

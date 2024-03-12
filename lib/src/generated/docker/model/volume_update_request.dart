//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class VolumeUpdateRequest {
  /// Returns a new [VolumeUpdateRequest] instance.
  VolumeUpdateRequest({
    this.spec,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ClusterVolumeSpec? spec;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VolumeUpdateRequest && other.spec == spec;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (spec == null ? 0 : spec!.hashCode);

  @override
  String toString() => 'VolumeUpdateRequest[spec=$spec]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.spec != null) {
      json[r'Spec'] = this.spec;
    } else {
      json[r'Spec'] = null;
    }
    return json;
  }

  /// Returns a new [VolumeUpdateRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VolumeUpdateRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "VolumeUpdateRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "VolumeUpdateRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VolumeUpdateRequest(
        spec: ClusterVolumeSpec.fromJson(json[r'Spec']),
      );
    }
    return null;
  }

  static List<VolumeUpdateRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <VolumeUpdateRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VolumeUpdateRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VolumeUpdateRequest> mapFromJson(dynamic json) {
    final map = <String, VolumeUpdateRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VolumeUpdateRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VolumeUpdateRequest-objects as value to a dart map
  static Map<String, List<VolumeUpdateRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<VolumeUpdateRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VolumeUpdateRequest.listFromJson(
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

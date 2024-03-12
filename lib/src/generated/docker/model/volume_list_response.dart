//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class VolumeListResponse {
  /// Returns a new [VolumeListResponse] instance.
  VolumeListResponse({
    this.volumes = const [],
    this.warnings = const [],
  });

  /// List of volumes
  List<Volume> volumes;

  /// Warnings that occurred when fetching the list of volumes.
  List<String> warnings;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VolumeListResponse &&
          _deepEquality.equals(other.volumes, volumes) &&
          _deepEquality.equals(other.warnings, warnings);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (volumes.hashCode) + (warnings.hashCode);

  @override
  String toString() =>
      'VolumeListResponse[volumes=$volumes, warnings=$warnings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Volumes'] = this.volumes;
    json[r'Warnings'] = this.warnings;
    return json;
  }

  /// Returns a new [VolumeListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VolumeListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "VolumeListResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "VolumeListResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VolumeListResponse(
        volumes: Volume.listFromJson(json[r'Volumes']),
        warnings: json[r'Warnings'] is Iterable
            ? (json[r'Warnings'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<VolumeListResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <VolumeListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VolumeListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VolumeListResponse> mapFromJson(dynamic json) {
    final map = <String, VolumeListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VolumeListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VolumeListResponse-objects as value to a dart map
  static Map<String, List<VolumeListResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<VolumeListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VolumeListResponse.listFromJson(
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

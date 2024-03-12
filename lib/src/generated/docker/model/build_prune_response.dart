//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class BuildPruneResponse {
  /// Returns a new [BuildPruneResponse] instance.
  BuildPruneResponse({
    this.cachesDeleted = const [],
    this.spaceReclaimed,
  });

  List<String> cachesDeleted;

  /// Disk space reclaimed in bytes
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spaceReclaimed;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BuildPruneResponse &&
          _deepEquality.equals(other.cachesDeleted, cachesDeleted) &&
          other.spaceReclaimed == spaceReclaimed;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (cachesDeleted.hashCode) +
      (spaceReclaimed == null ? 0 : spaceReclaimed!.hashCode);

  @override
  String toString() =>
      'BuildPruneResponse[cachesDeleted=$cachesDeleted, spaceReclaimed=$spaceReclaimed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'CachesDeleted'] = this.cachesDeleted;
    if (this.spaceReclaimed != null) {
      json[r'SpaceReclaimed'] = this.spaceReclaimed;
    } else {
      json[r'SpaceReclaimed'] = null;
    }
    return json;
  }

  /// Returns a new [BuildPruneResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BuildPruneResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "BuildPruneResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "BuildPruneResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BuildPruneResponse(
        cachesDeleted: json[r'CachesDeleted'] is Iterable
            ? (json[r'CachesDeleted'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        spaceReclaimed: mapValueOfType<int>(json, r'SpaceReclaimed'),
      );
    }
    return null;
  }

  static List<BuildPruneResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BuildPruneResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BuildPruneResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BuildPruneResponse> mapFromJson(dynamic json) {
    final map = <String, BuildPruneResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BuildPruneResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BuildPruneResponse-objects as value to a dart map
  static Map<String, List<BuildPruneResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<BuildPruneResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BuildPruneResponse.listFromJson(
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

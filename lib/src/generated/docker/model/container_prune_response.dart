//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ContainerPruneResponse {
  /// Returns a new [ContainerPruneResponse] instance.
  ContainerPruneResponse({
    this.containersDeleted = const [],
    this.spaceReclaimed,
  });

  /// Container IDs that were deleted
  List<String> containersDeleted;

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
      other is ContainerPruneResponse &&
          _deepEquality.equals(other.containersDeleted, containersDeleted) &&
          other.spaceReclaimed == spaceReclaimed;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (containersDeleted.hashCode) +
      (spaceReclaimed == null ? 0 : spaceReclaimed!.hashCode);

  @override
  String toString() =>
      'ContainerPruneResponse[containersDeleted=$containersDeleted, spaceReclaimed=$spaceReclaimed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'ContainersDeleted'] = this.containersDeleted;
    if (this.spaceReclaimed != null) {
      json[r'SpaceReclaimed'] = this.spaceReclaimed;
    } else {
      json[r'SpaceReclaimed'] = null;
    }
    return json;
  }

  /// Returns a new [ContainerPruneResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContainerPruneResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ContainerPruneResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ContainerPruneResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContainerPruneResponse(
        containersDeleted: json[r'ContainersDeleted'] is Iterable
            ? (json[r'ContainersDeleted'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        spaceReclaimed: mapValueOfType<int>(json, r'SpaceReclaimed'),
      );
    }
    return null;
  }

  static List<ContainerPruneResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ContainerPruneResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContainerPruneResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContainerPruneResponse> mapFromJson(dynamic json) {
    final map = <String, ContainerPruneResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContainerPruneResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContainerPruneResponse-objects as value to a dart map
  static Map<String, List<ContainerPruneResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ContainerPruneResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContainerPruneResponse.listFromJson(
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

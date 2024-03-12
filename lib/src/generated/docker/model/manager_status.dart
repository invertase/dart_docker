//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ManagerStatus {
  /// Returns a new [ManagerStatus] instance.
  ManagerStatus({
    this.leader = false,
    this.reachability,
    this.addr,
  });

  bool leader;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Reachability? reachability;

  /// The IP address and port at which the manager is reachable.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? addr;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ManagerStatus &&
          other.leader == leader &&
          other.reachability == reachability &&
          other.addr == addr;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (leader.hashCode) +
      (reachability == null ? 0 : reachability!.hashCode) +
      (addr == null ? 0 : addr!.hashCode);

  @override
  String toString() =>
      'ManagerStatus[leader=$leader, reachability=$reachability, addr=$addr]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Leader'] = this.leader;
    if (this.reachability != null) {
      json[r'Reachability'] = this.reachability;
    } else {
      json[r'Reachability'] = null;
    }
    if (this.addr != null) {
      json[r'Addr'] = this.addr;
    } else {
      json[r'Addr'] = null;
    }
    return json;
  }

  /// Returns a new [ManagerStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ManagerStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ManagerStatus[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ManagerStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ManagerStatus(
        leader: mapValueOfType<bool>(json, r'Leader') ?? false,
        reachability: Reachability.fromJson(json[r'Reachability']),
        addr: mapValueOfType<String>(json, r'Addr'),
      );
    }
    return null;
  }

  static List<ManagerStatus> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ManagerStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ManagerStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ManagerStatus> mapFromJson(dynamic json) {
    final map = <String, ManagerStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ManagerStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ManagerStatus-objects as value to a dart map
  static Map<String, List<ManagerStatus>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ManagerStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ManagerStatus.listFromJson(
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class SwarmSpecRaft {
  /// Returns a new [SwarmSpecRaft] instance.
  SwarmSpecRaft({
    this.snapshotInterval,
    this.keepOldSnapshots,
    this.logEntriesForSlowFollowers,
    this.electionTick,
    this.heartbeatTick,
  });

  /// The number of log entries between snapshots.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? snapshotInterval;

  /// The number of snapshots to keep beyond the current snapshot.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? keepOldSnapshots;

  /// The number of log entries to keep around to sync up slow followers after a snapshot is created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? logEntriesForSlowFollowers;

  /// The number of ticks that a follower will wait for a message from the leader before becoming a candidate and starting an election. `ElectionTick` must be greater than `HeartbeatTick`.  A tick currently defaults to one second, so these translate directly to seconds currently, but this is NOT guaranteed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? electionTick;

  /// The number of ticks between heartbeats. Every HeartbeatTick ticks, the leader will send a heartbeat to the followers.  A tick currently defaults to one second, so these translate directly to seconds currently, but this is NOT guaranteed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? heartbeatTick;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SwarmSpecRaft &&
          other.snapshotInterval == snapshotInterval &&
          other.keepOldSnapshots == keepOldSnapshots &&
          other.logEntriesForSlowFollowers == logEntriesForSlowFollowers &&
          other.electionTick == electionTick &&
          other.heartbeatTick == heartbeatTick;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (snapshotInterval == null ? 0 : snapshotInterval!.hashCode) +
      (keepOldSnapshots == null ? 0 : keepOldSnapshots!.hashCode) +
      (logEntriesForSlowFollowers == null
          ? 0
          : logEntriesForSlowFollowers!.hashCode) +
      (electionTick == null ? 0 : electionTick!.hashCode) +
      (heartbeatTick == null ? 0 : heartbeatTick!.hashCode);

  @override
  String toString() =>
      'SwarmSpecRaft[snapshotInterval=$snapshotInterval, keepOldSnapshots=$keepOldSnapshots, logEntriesForSlowFollowers=$logEntriesForSlowFollowers, electionTick=$electionTick, heartbeatTick=$heartbeatTick]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.snapshotInterval != null) {
      json[r'SnapshotInterval'] = this.snapshotInterval;
    } else {
      json[r'SnapshotInterval'] = null;
    }
    if (this.keepOldSnapshots != null) {
      json[r'KeepOldSnapshots'] = this.keepOldSnapshots;
    } else {
      json[r'KeepOldSnapshots'] = null;
    }
    if (this.logEntriesForSlowFollowers != null) {
      json[r'LogEntriesForSlowFollowers'] = this.logEntriesForSlowFollowers;
    } else {
      json[r'LogEntriesForSlowFollowers'] = null;
    }
    if (this.electionTick != null) {
      json[r'ElectionTick'] = this.electionTick;
    } else {
      json[r'ElectionTick'] = null;
    }
    if (this.heartbeatTick != null) {
      json[r'HeartbeatTick'] = this.heartbeatTick;
    } else {
      json[r'HeartbeatTick'] = null;
    }
    return json;
  }

  /// Returns a new [SwarmSpecRaft] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SwarmSpecRaft? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SwarmSpecRaft[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SwarmSpecRaft[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SwarmSpecRaft(
        snapshotInterval: mapValueOfType<int>(json, r'SnapshotInterval'),
        keepOldSnapshots: mapValueOfType<int>(json, r'KeepOldSnapshots'),
        logEntriesForSlowFollowers:
            mapValueOfType<int>(json, r'LogEntriesForSlowFollowers'),
        electionTick: mapValueOfType<int>(json, r'ElectionTick'),
        heartbeatTick: mapValueOfType<int>(json, r'HeartbeatTick'),
      );
    }
    return null;
  }

  static List<SwarmSpecRaft> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SwarmSpecRaft>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SwarmSpecRaft.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SwarmSpecRaft> mapFromJson(dynamic json) {
    final map = <String, SwarmSpecRaft>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SwarmSpecRaft.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SwarmSpecRaft-objects as value to a dart map
  static Map<String, List<SwarmSpecRaft>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SwarmSpecRaft>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SwarmSpecRaft.listFromJson(
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

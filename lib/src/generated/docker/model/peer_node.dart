//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class PeerNode {
  /// Returns a new [PeerNode] instance.
  PeerNode({
    this.nodeID,
    this.addr,
  });

  /// Unique identifier of for this node in the swarm.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nodeID;

  /// IP address and ports at which this node can be reached.
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
      other is PeerNode && other.nodeID == nodeID && other.addr == addr;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (nodeID == null ? 0 : nodeID!.hashCode) +
      (addr == null ? 0 : addr!.hashCode);

  @override
  String toString() => 'PeerNode[nodeID=$nodeID, addr=$addr]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.nodeID != null) {
      json[r'NodeID'] = this.nodeID;
    } else {
      json[r'NodeID'] = null;
    }
    if (this.addr != null) {
      json[r'Addr'] = this.addr;
    } else {
      json[r'Addr'] = null;
    }
    return json;
  }

  /// Returns a new [PeerNode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PeerNode? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PeerNode[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PeerNode[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PeerNode(
        nodeID: mapValueOfType<String>(json, r'NodeID'),
        addr: mapValueOfType<String>(json, r'Addr'),
      );
    }
    return null;
  }

  static List<PeerNode> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PeerNode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PeerNode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PeerNode> mapFromJson(dynamic json) {
    final map = <String, PeerNode>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PeerNode.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PeerNode-objects as value to a dart map
  static Map<String, List<PeerNode>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PeerNode>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PeerNode.listFromJson(
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

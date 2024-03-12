//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class SwarmInfo {
  /// Returns a new [SwarmInfo] instance.
  SwarmInfo({
    this.nodeID = '',
    this.nodeAddr = '',
    this.localNodeState,
    this.controlAvailable = false,
    this.error = '',
    this.remoteManagers = const [],
    this.nodes,
    this.managers,
    this.cluster,
  });

  /// Unique identifier of for this node in the swarm.
  String nodeID;

  /// IP address at which this node can be reached by other nodes in the swarm.
  String nodeAddr;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LocalNodeState? localNodeState;

  bool controlAvailable;

  String error;

  /// List of ID's and addresses of other managers in the swarm.
  List<PeerNode>? remoteManagers;

  /// Total number of nodes in the swarm.
  int? nodes;

  /// Total number of managers in the swarm.
  int? managers;

  ClusterInfo? cluster;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SwarmInfo &&
          other.nodeID == nodeID &&
          other.nodeAddr == nodeAddr &&
          other.localNodeState == localNodeState &&
          other.controlAvailable == controlAvailable &&
          other.error == error &&
          _deepEquality.equals(other.remoteManagers, remoteManagers) &&
          other.nodes == nodes &&
          other.managers == managers &&
          other.cluster == cluster;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (nodeID.hashCode) +
      (nodeAddr.hashCode) +
      (localNodeState == null ? 0 : localNodeState!.hashCode) +
      (controlAvailable.hashCode) +
      (error.hashCode) +
      (remoteManagers == null ? 0 : remoteManagers!.hashCode) +
      (nodes == null ? 0 : nodes!.hashCode) +
      (managers == null ? 0 : managers!.hashCode) +
      (cluster == null ? 0 : cluster!.hashCode);

  @override
  String toString() =>
      'SwarmInfo[nodeID=$nodeID, nodeAddr=$nodeAddr, localNodeState=$localNodeState, controlAvailable=$controlAvailable, error=$error, remoteManagers=$remoteManagers, nodes=$nodes, managers=$managers, cluster=$cluster]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'NodeID'] = this.nodeID;
    json[r'NodeAddr'] = this.nodeAddr;
    if (this.localNodeState != null) {
      json[r'LocalNodeState'] = this.localNodeState;
    } else {
      json[r'LocalNodeState'] = null;
    }
    json[r'ControlAvailable'] = this.controlAvailable;
    json[r'Error'] = this.error;
    if (this.remoteManagers != null) {
      json[r'RemoteManagers'] = this.remoteManagers;
    } else {
      json[r'RemoteManagers'] = null;
    }
    if (this.nodes != null) {
      json[r'Nodes'] = this.nodes;
    } else {
      json[r'Nodes'] = null;
    }
    if (this.managers != null) {
      json[r'Managers'] = this.managers;
    } else {
      json[r'Managers'] = null;
    }
    if (this.cluster != null) {
      json[r'Cluster'] = this.cluster;
    } else {
      json[r'Cluster'] = null;
    }
    return json;
  }

  /// Returns a new [SwarmInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SwarmInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SwarmInfo[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SwarmInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SwarmInfo(
        nodeID: mapValueOfType<String>(json, r'NodeID') ?? '',
        nodeAddr: mapValueOfType<String>(json, r'NodeAddr') ?? '',
        localNodeState: LocalNodeState.fromJson(json[r'LocalNodeState']),
        controlAvailable:
            mapValueOfType<bool>(json, r'ControlAvailable') ?? false,
        error: mapValueOfType<String>(json, r'Error') ?? '',
        remoteManagers: PeerNode.listFromJson(json[r'RemoteManagers']),
        nodes: mapValueOfType<int>(json, r'Nodes'),
        managers: mapValueOfType<int>(json, r'Managers'),
        cluster: ClusterInfo.fromJson(json[r'Cluster']),
      );
    }
    return null;
  }

  static List<SwarmInfo> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SwarmInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SwarmInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SwarmInfo> mapFromJson(dynamic json) {
    final map = <String, SwarmInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SwarmInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SwarmInfo-objects as value to a dart map
  static Map<String, List<SwarmInfo>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SwarmInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SwarmInfo.listFromJson(
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

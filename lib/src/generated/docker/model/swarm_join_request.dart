//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class SwarmJoinRequest {
  /// Returns a new [SwarmJoinRequest] instance.
  SwarmJoinRequest({
    this.listenAddr,
    this.advertiseAddr,
    this.dataPathAddr,
    this.remoteAddrs = const [],
    this.joinToken,
  });

  /// Listen address used for inter-manager communication if the node gets promoted to manager, as well as determining the networking interface used for the VXLAN Tunnel Endpoint (VTEP).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? listenAddr;

  /// Externally reachable address advertised to other nodes. This can either be an address/port combination in the form `192.168.1.1:4567`, or an interface followed by a port number, like `eth0:4567`. If the port number is omitted, the port number from the listen address is used. If `AdvertiseAddr` is not specified, it will be automatically detected when possible.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? advertiseAddr;

  /// Address or interface to use for data path traffic (format: `<ip|interface>`), for example,  `192.168.1.1`, or an interface, like `eth0`. If `DataPathAddr` is unspecified, the same address as `AdvertiseAddr` is used.  The `DataPathAddr` specifies the address that global scope network drivers will publish towards other nodes in order to reach the containers running on this node. Using this parameter it is possible to separate the container data traffic from the management traffic of the cluster.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataPathAddr;

  /// Addresses of manager nodes already participating in the swarm.
  List<String> remoteAddrs;

  /// Secret token for joining this swarm.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? joinToken;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SwarmJoinRequest &&
          other.listenAddr == listenAddr &&
          other.advertiseAddr == advertiseAddr &&
          other.dataPathAddr == dataPathAddr &&
          _deepEquality.equals(other.remoteAddrs, remoteAddrs) &&
          other.joinToken == joinToken;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (listenAddr == null ? 0 : listenAddr!.hashCode) +
      (advertiseAddr == null ? 0 : advertiseAddr!.hashCode) +
      (dataPathAddr == null ? 0 : dataPathAddr!.hashCode) +
      (remoteAddrs.hashCode) +
      (joinToken == null ? 0 : joinToken!.hashCode);

  @override
  String toString() =>
      'SwarmJoinRequest[listenAddr=$listenAddr, advertiseAddr=$advertiseAddr, dataPathAddr=$dataPathAddr, remoteAddrs=$remoteAddrs, joinToken=$joinToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.listenAddr != null) {
      json[r'ListenAddr'] = this.listenAddr;
    } else {
      json[r'ListenAddr'] = null;
    }
    if (this.advertiseAddr != null) {
      json[r'AdvertiseAddr'] = this.advertiseAddr;
    } else {
      json[r'AdvertiseAddr'] = null;
    }
    if (this.dataPathAddr != null) {
      json[r'DataPathAddr'] = this.dataPathAddr;
    } else {
      json[r'DataPathAddr'] = null;
    }
    json[r'RemoteAddrs'] = this.remoteAddrs;
    if (this.joinToken != null) {
      json[r'JoinToken'] = this.joinToken;
    } else {
      json[r'JoinToken'] = null;
    }
    return json;
  }

  /// Returns a new [SwarmJoinRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SwarmJoinRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SwarmJoinRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SwarmJoinRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SwarmJoinRequest(
        listenAddr: mapValueOfType<String>(json, r'ListenAddr'),
        advertiseAddr: mapValueOfType<String>(json, r'AdvertiseAddr'),
        dataPathAddr: mapValueOfType<String>(json, r'DataPathAddr'),
        remoteAddrs: json[r'RemoteAddrs'] is Iterable
            ? (json[r'RemoteAddrs'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        joinToken: mapValueOfType<String>(json, r'JoinToken'),
      );
    }
    return null;
  }

  static List<SwarmJoinRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SwarmJoinRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SwarmJoinRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SwarmJoinRequest> mapFromJson(dynamic json) {
    final map = <String, SwarmJoinRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SwarmJoinRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SwarmJoinRequest-objects as value to a dart map
  static Map<String, List<SwarmJoinRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SwarmJoinRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SwarmJoinRequest.listFromJson(
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

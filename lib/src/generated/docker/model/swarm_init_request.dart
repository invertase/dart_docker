//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class SwarmInitRequest {
  /// Returns a new [SwarmInitRequest] instance.
  SwarmInitRequest({
    this.listenAddr,
    this.advertiseAddr,
    this.dataPathAddr,
    this.dataPathPort,
    this.defaultAddrPool = const [],
    this.forceNewCluster,
    this.subnetSize,
    this.spec,
  });

  /// Listen address used for inter-manager communication, as well as determining the networking interface used for the VXLAN Tunnel Endpoint (VTEP). This can either be an address/port combination in the form `192.168.1.1:4567`, or an interface followed by a port number, like `eth0:4567`. If the port number is omitted, the default swarm listening port is used.
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

  /// Address or interface to use for data path traffic (format: `<ip|interface>`), for example,  `192.168.1.1`, or an interface, like `eth0`. If `DataPathAddr` is unspecified, the same address as `AdvertiseAddr` is used.  The `DataPathAddr` specifies the address that global scope network drivers will publish towards other  nodes in order to reach the containers running on this node. Using this parameter it is possible to separate the container data traffic from the management traffic of the cluster.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataPathAddr;

  /// DataPathPort specifies the data path port number for data traffic. Acceptable port range is 1024 to 49151. if no port is set or is set to 0, default port 4789 will be used.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dataPathPort;

  /// Default Address Pool specifies default subnet pools for global scope networks.
  List<String> defaultAddrPool;

  /// Force creation of a new swarm.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? forceNewCluster;

  /// SubnetSize specifies the subnet size of the networks created from the default subnet pool.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subnetSize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SwarmSpec? spec;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SwarmInitRequest &&
          other.listenAddr == listenAddr &&
          other.advertiseAddr == advertiseAddr &&
          other.dataPathAddr == dataPathAddr &&
          other.dataPathPort == dataPathPort &&
          _deepEquality.equals(other.defaultAddrPool, defaultAddrPool) &&
          other.forceNewCluster == forceNewCluster &&
          other.subnetSize == subnetSize &&
          other.spec == spec;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (listenAddr == null ? 0 : listenAddr!.hashCode) +
      (advertiseAddr == null ? 0 : advertiseAddr!.hashCode) +
      (dataPathAddr == null ? 0 : dataPathAddr!.hashCode) +
      (dataPathPort == null ? 0 : dataPathPort!.hashCode) +
      (defaultAddrPool.hashCode) +
      (forceNewCluster == null ? 0 : forceNewCluster!.hashCode) +
      (subnetSize == null ? 0 : subnetSize!.hashCode) +
      (spec == null ? 0 : spec!.hashCode);

  @override
  String toString() =>
      'SwarmInitRequest[listenAddr=$listenAddr, advertiseAddr=$advertiseAddr, dataPathAddr=$dataPathAddr, dataPathPort=$dataPathPort, defaultAddrPool=$defaultAddrPool, forceNewCluster=$forceNewCluster, subnetSize=$subnetSize, spec=$spec]';

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
    if (this.dataPathPort != null) {
      json[r'DataPathPort'] = this.dataPathPort;
    } else {
      json[r'DataPathPort'] = null;
    }
    json[r'DefaultAddrPool'] = this.defaultAddrPool;
    if (this.forceNewCluster != null) {
      json[r'ForceNewCluster'] = this.forceNewCluster;
    } else {
      json[r'ForceNewCluster'] = null;
    }
    if (this.subnetSize != null) {
      json[r'SubnetSize'] = this.subnetSize;
    } else {
      json[r'SubnetSize'] = null;
    }
    if (this.spec != null) {
      json[r'Spec'] = this.spec;
    } else {
      json[r'Spec'] = null;
    }
    return json;
  }

  /// Returns a new [SwarmInitRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SwarmInitRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SwarmInitRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SwarmInitRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SwarmInitRequest(
        listenAddr: mapValueOfType<String>(json, r'ListenAddr'),
        advertiseAddr: mapValueOfType<String>(json, r'AdvertiseAddr'),
        dataPathAddr: mapValueOfType<String>(json, r'DataPathAddr'),
        dataPathPort: mapValueOfType<int>(json, r'DataPathPort'),
        defaultAddrPool: json[r'DefaultAddrPool'] is Iterable
            ? (json[r'DefaultAddrPool'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        forceNewCluster: mapValueOfType<bool>(json, r'ForceNewCluster'),
        subnetSize: mapValueOfType<int>(json, r'SubnetSize'),
        spec: SwarmSpec.fromJson(json[r'Spec']),
      );
    }
    return null;
  }

  static List<SwarmInitRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SwarmInitRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SwarmInitRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SwarmInitRequest> mapFromJson(dynamic json) {
    final map = <String, SwarmInitRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SwarmInitRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SwarmInitRequest-objects as value to a dart map
  static Map<String, List<SwarmInitRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SwarmInitRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SwarmInitRequest.listFromJson(
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

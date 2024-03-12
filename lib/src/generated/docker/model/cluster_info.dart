//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ClusterInfo {
  /// Returns a new [ClusterInfo] instance.
  ClusterInfo({
    this.ID,
    this.version,
    this.createdAt,
    this.updatedAt,
    this.spec,
    this.tLSInfo,
    this.rootRotationInProgress,
    this.dataPathPort,
    this.defaultAddrPool = const [],
    this.subnetSize,
  });

  /// The ID of the swarm.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ObjectVersion? version;

  /// Date and time at which the swarm was initialised in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Date and time at which the swarm was last updated in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SwarmSpec? spec;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TLSInfo? tLSInfo;

  /// Whether there is currently a root CA rotation in progress for the swarm
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? rootRotationInProgress;

  /// DataPathPort specifies the data path port number for data traffic. Acceptable port range is 1024 to 49151. If no port is set or is set to 0, the default port (4789) is used.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dataPathPort;

  /// Default Address Pool specifies default subnet pools for global scope networks.
  List<String> defaultAddrPool;

  /// SubnetSize specifies the subnet size of the networks created from the default subnet pool.
  ///
  /// Maximum value: 29
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subnetSize;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClusterInfo &&
          other.ID == ID &&
          other.version == version &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.spec == spec &&
          other.tLSInfo == tLSInfo &&
          other.rootRotationInProgress == rootRotationInProgress &&
          other.dataPathPort == dataPathPort &&
          _deepEquality.equals(other.defaultAddrPool, defaultAddrPool) &&
          other.subnetSize == subnetSize;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (ID == null ? 0 : ID!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (updatedAt == null ? 0 : updatedAt!.hashCode) +
      (spec == null ? 0 : spec!.hashCode) +
      (tLSInfo == null ? 0 : tLSInfo!.hashCode) +
      (rootRotationInProgress == null ? 0 : rootRotationInProgress!.hashCode) +
      (dataPathPort == null ? 0 : dataPathPort!.hashCode) +
      (defaultAddrPool.hashCode) +
      (subnetSize == null ? 0 : subnetSize!.hashCode);

  @override
  String toString() =>
      'ClusterInfo[ID=$ID, version=$version, createdAt=$createdAt, updatedAt=$updatedAt, spec=$spec, tLSInfo=$tLSInfo, rootRotationInProgress=$rootRotationInProgress, dataPathPort=$dataPathPort, defaultAddrPool=$defaultAddrPool, subnetSize=$subnetSize]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ID != null) {
      json[r'ID'] = this.ID;
    } else {
      json[r'ID'] = null;
    }
    if (this.version != null) {
      json[r'Version'] = this.version;
    } else {
      json[r'Version'] = null;
    }
    if (this.createdAt != null) {
      json[r'CreatedAt'] = this.createdAt;
    } else {
      json[r'CreatedAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'UpdatedAt'] = this.updatedAt;
    } else {
      json[r'UpdatedAt'] = null;
    }
    if (this.spec != null) {
      json[r'Spec'] = this.spec;
    } else {
      json[r'Spec'] = null;
    }
    if (this.tLSInfo != null) {
      json[r'TLSInfo'] = this.tLSInfo;
    } else {
      json[r'TLSInfo'] = null;
    }
    if (this.rootRotationInProgress != null) {
      json[r'RootRotationInProgress'] = this.rootRotationInProgress;
    } else {
      json[r'RootRotationInProgress'] = null;
    }
    if (this.dataPathPort != null) {
      json[r'DataPathPort'] = this.dataPathPort;
    } else {
      json[r'DataPathPort'] = null;
    }
    json[r'DefaultAddrPool'] = this.defaultAddrPool;
    if (this.subnetSize != null) {
      json[r'SubnetSize'] = this.subnetSize;
    } else {
      json[r'SubnetSize'] = null;
    }
    return json;
  }

  /// Returns a new [ClusterInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClusterInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ClusterInfo[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ClusterInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClusterInfo(
        ID: mapValueOfType<String>(json, r'ID'),
        version: ObjectVersion.fromJson(json[r'Version']),
        createdAt: mapValueOfType<String>(json, r'CreatedAt'),
        updatedAt: mapValueOfType<String>(json, r'UpdatedAt'),
        spec: SwarmSpec.fromJson(json[r'Spec']),
        tLSInfo: TLSInfo.fromJson(json[r'TLSInfo']),
        rootRotationInProgress:
            mapValueOfType<bool>(json, r'RootRotationInProgress'),
        dataPathPort: mapValueOfType<int>(json, r'DataPathPort'),
        defaultAddrPool: json[r'DefaultAddrPool'] is Iterable
            ? (json[r'DefaultAddrPool'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        subnetSize: mapValueOfType<int>(json, r'SubnetSize'),
      );
    }
    return null;
  }

  static List<ClusterInfo> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ClusterInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClusterInfo> mapFromJson(dynamic json) {
    final map = <String, ClusterInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClusterInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClusterInfo-objects as value to a dart map
  static Map<String, List<ClusterInfo>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ClusterInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClusterInfo.listFromJson(
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

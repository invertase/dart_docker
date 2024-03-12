//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class NetworkCreateRequest {
  /// Returns a new [NetworkCreateRequest] instance.
  NetworkCreateRequest({
    required this.name,
    this.checkDuplicate,
    this.driver = 'bridge',
    this.internal,
    this.attachable,
    this.ingress,
    this.ipam,
    this.enableIPv6,
    this.options = const {},
    this.labels = const {},
  });

  /// The network's name.
  String name;

  /// Deprecated: CheckDuplicate is now always enabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? checkDuplicate;

  /// Name of the network driver plugin to use.
  String driver;

  /// Restrict external access to the network.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? internal;

  /// Globally scoped network is manually attachable by regular containers from workers in swarm mode.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? attachable;

  /// Ingress network is the network which provides the routing-mesh in swarm mode.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ingress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IPAM? ipam;

  /// Enable IPv6 on the network.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableIPv6;

  /// Network specific options to be used by the drivers.
  Map<String, String> options;

  /// User-defined key/value metadata.
  Map<String, String> labels;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetworkCreateRequest &&
          other.name == name &&
          other.checkDuplicate == checkDuplicate &&
          other.driver == driver &&
          other.internal == internal &&
          other.attachable == attachable &&
          other.ingress == ingress &&
          other.ipam == ipam &&
          other.enableIPv6 == enableIPv6 &&
          _deepEquality.equals(other.options, options) &&
          _deepEquality.equals(other.labels, labels);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name.hashCode) +
      (checkDuplicate == null ? 0 : checkDuplicate!.hashCode) +
      (driver.hashCode) +
      (internal == null ? 0 : internal!.hashCode) +
      (attachable == null ? 0 : attachable!.hashCode) +
      (ingress == null ? 0 : ingress!.hashCode) +
      (ipam == null ? 0 : ipam!.hashCode) +
      (enableIPv6 == null ? 0 : enableIPv6!.hashCode) +
      (options.hashCode) +
      (labels.hashCode);

  @override
  String toString() =>
      'NetworkCreateRequest[name=$name, checkDuplicate=$checkDuplicate, driver=$driver, internal=$internal, attachable=$attachable, ingress=$ingress, IPAM=$IPAM, enableIPv6=$enableIPv6, options=$options, labels=$labels]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Name'] = this.name;
    if (this.checkDuplicate != null) {
      json[r'CheckDuplicate'] = this.checkDuplicate;
    } else {
      json[r'CheckDuplicate'] = null;
    }
    json[r'Driver'] = this.driver;
    if (this.internal != null) {
      json[r'Internal'] = this.internal;
    } else {
      json[r'Internal'] = null;
    }
    if (this.attachable != null) {
      json[r'Attachable'] = this.attachable;
    } else {
      json[r'Attachable'] = null;
    }
    if (this.ingress != null) {
      json[r'Ingress'] = this.ingress;
    } else {
      json[r'Ingress'] = null;
    }
    if (this.ipam != null) {
      json[r'IPAM'] = this.ipam;
    } else {
      json[r'IPAM'] = null;
    }
    if (this.enableIPv6 != null) {
      json[r'EnableIPv6'] = this.enableIPv6;
    } else {
      json[r'EnableIPv6'] = null;
    }
    json[r'Options'] = this.options;
    json[r'Labels'] = this.labels;
    return json;
  }

  /// Returns a new [NetworkCreateRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NetworkCreateRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "NetworkCreateRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "NetworkCreateRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NetworkCreateRequest(
        name: mapValueOfType<String>(json, r'Name')!,
        checkDuplicate: mapValueOfType<bool>(json, r'CheckDuplicate'),
        driver: mapValueOfType<String>(json, r'Driver') ?? 'bridge',
        internal: mapValueOfType<bool>(json, r'Internal'),
        attachable: mapValueOfType<bool>(json, r'Attachable'),
        ingress: mapValueOfType<bool>(json, r'Ingress'),
        ipam: IPAM.fromJson(json[r'IPAM']),
        enableIPv6: mapValueOfType<bool>(json, r'EnableIPv6'),
        options: mapCastOfType<String, String>(json, r'Options') ?? const {},
        labels: mapCastOfType<String, String>(json, r'Labels') ?? const {},
      );
    }
    return null;
  }

  static List<NetworkCreateRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NetworkCreateRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NetworkCreateRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NetworkCreateRequest> mapFromJson(dynamic json) {
    final map = <String, NetworkCreateRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NetworkCreateRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NetworkCreateRequest-objects as value to a dart map
  static Map<String, List<NetworkCreateRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NetworkCreateRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NetworkCreateRequest.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'Name',
  };
}

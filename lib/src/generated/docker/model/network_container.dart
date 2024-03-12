//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class NetworkContainer {
  /// Returns a new [NetworkContainer] instance.
  NetworkContainer({
    this.name,
    this.endpointID,
    this.macAddress,
    this.iPv4Address,
    this.iPv6Address,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endpointID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? macAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iPv4Address;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iPv6Address;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetworkContainer &&
          other.name == name &&
          other.endpointID == endpointID &&
          other.macAddress == macAddress &&
          other.iPv4Address == iPv4Address &&
          other.iPv6Address == iPv6Address;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) +
      (endpointID == null ? 0 : endpointID!.hashCode) +
      (macAddress == null ? 0 : macAddress!.hashCode) +
      (iPv4Address == null ? 0 : iPv4Address!.hashCode) +
      (iPv6Address == null ? 0 : iPv6Address!.hashCode);

  @override
  String toString() =>
      'NetworkContainer[name=$name, endpointID=$endpointID, macAddress=$macAddress, iPv4Address=$iPv4Address, iPv6Address=$iPv6Address]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    if (this.endpointID != null) {
      json[r'EndpointID'] = this.endpointID;
    } else {
      json[r'EndpointID'] = null;
    }
    if (this.macAddress != null) {
      json[r'MacAddress'] = this.macAddress;
    } else {
      json[r'MacAddress'] = null;
    }
    if (this.iPv4Address != null) {
      json[r'IPv4Address'] = this.iPv4Address;
    } else {
      json[r'IPv4Address'] = null;
    }
    if (this.iPv6Address != null) {
      json[r'IPv6Address'] = this.iPv6Address;
    } else {
      json[r'IPv6Address'] = null;
    }
    return json;
  }

  /// Returns a new [NetworkContainer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NetworkContainer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "NetworkContainer[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "NetworkContainer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NetworkContainer(
        name: mapValueOfType<String>(json, r'Name'),
        endpointID: mapValueOfType<String>(json, r'EndpointID'),
        macAddress: mapValueOfType<String>(json, r'MacAddress'),
        iPv4Address: mapValueOfType<String>(json, r'IPv4Address'),
        iPv6Address: mapValueOfType<String>(json, r'IPv6Address'),
      );
    }
    return null;
  }

  static List<NetworkContainer> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NetworkContainer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NetworkContainer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NetworkContainer> mapFromJson(dynamic json) {
    final map = <String, NetworkContainer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NetworkContainer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NetworkContainer-objects as value to a dart map
  static Map<String, List<NetworkContainer>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NetworkContainer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NetworkContainer.listFromJson(
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

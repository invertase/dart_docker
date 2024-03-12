//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class NetworkSettings {
  /// Returns a new [NetworkSettings] instance.
  NetworkSettings({
    this.bridge,
    this.sandboxID,
    this.hairpinMode,
    this.linkLocalIPv6Address,
    this.linkLocalIPv6PrefixLen,
    this.ports = const {},
    this.sandboxKey,
    this.secondaryIPAddresses = const [],
    this.secondaryIPv6Addresses = const [],
    this.endpointID,
    this.gateway,
    this.globalIPv6Address,
    this.globalIPv6PrefixLen,
    this.iPAddress,
    this.iPPrefixLen,
    this.iPv6Gateway,
    this.macAddress,
    this.networks = const {},
  });

  /// Name of the default bridge interface when dockerd's --bridge flag is set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bridge;

  /// SandboxID uniquely represents a container's network stack.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sandboxID;

  /// Indicates if hairpin NAT should be enabled on the virtual interface.  Deprecated: This field is never set and will be removed in a future release.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hairpinMode;

  /// IPv6 unicast address using the link-local prefix.  Deprecated: This field is never set and will be removed in a future release.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? linkLocalIPv6Address;

  /// Prefix length of the IPv6 unicast address.  Deprecated: This field is never set and will be removed in a future release.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? linkLocalIPv6PrefixLen;

  /// PortMap describes the mapping of container ports to host ports, using the container's port-number and protocol as key in the format `<port>/<protocol>`, for example, `80/udp`.  If a container's port is mapped for multiple protocols, separate entries are added to the mapping table.
  Map<String, List<PortBinding>> ports;

  /// SandboxKey is the full path of the netns handle
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sandboxKey;

  /// Deprecated: This field is never set and will be removed in a future release.
  List<Address>? secondaryIPAddresses;

  /// Deprecated: This field is never set and will be removed in a future release.
  List<Address>? secondaryIPv6Addresses;

  /// EndpointID uniquely represents a service endpoint in a Sandbox.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endpointID;

  /// Gateway address for the default \"bridge\" network.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gateway;

  /// Global IPv6 address for the default \"bridge\" network.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? globalIPv6Address;

  /// Mask length of the global IPv6 address.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? globalIPv6PrefixLen;

  /// IPv4 address for the default \"bridge\" network.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iPAddress;

  /// Mask length of the IPv4 address.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? iPPrefixLen;

  /// IPv6 gateway address for this network.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iPv6Gateway;

  /// MAC address for the container on the default \"bridge\" network.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? macAddress;

  /// Information about all networks that the container is connected to.
  Map<String, EndpointSettings> networks;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetworkSettings &&
          other.bridge == bridge &&
          other.sandboxID == sandboxID &&
          other.hairpinMode == hairpinMode &&
          other.linkLocalIPv6Address == linkLocalIPv6Address &&
          other.linkLocalIPv6PrefixLen == linkLocalIPv6PrefixLen &&
          _deepEquality.equals(other.ports, ports) &&
          other.sandboxKey == sandboxKey &&
          _deepEquality.equals(
              other.secondaryIPAddresses, secondaryIPAddresses) &&
          _deepEquality.equals(
              other.secondaryIPv6Addresses, secondaryIPv6Addresses) &&
          other.endpointID == endpointID &&
          other.gateway == gateway &&
          other.globalIPv6Address == globalIPv6Address &&
          other.globalIPv6PrefixLen == globalIPv6PrefixLen &&
          other.iPAddress == iPAddress &&
          other.iPPrefixLen == iPPrefixLen &&
          other.iPv6Gateway == iPv6Gateway &&
          other.macAddress == macAddress &&
          _deepEquality.equals(other.networks, networks);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (bridge == null ? 0 : bridge!.hashCode) +
      (sandboxID == null ? 0 : sandboxID!.hashCode) +
      (hairpinMode == null ? 0 : hairpinMode!.hashCode) +
      (linkLocalIPv6Address == null ? 0 : linkLocalIPv6Address!.hashCode) +
      (linkLocalIPv6PrefixLen == null ? 0 : linkLocalIPv6PrefixLen!.hashCode) +
      (ports.hashCode) +
      (sandboxKey == null ? 0 : sandboxKey!.hashCode) +
      (secondaryIPAddresses == null ? 0 : secondaryIPAddresses!.hashCode) +
      (secondaryIPv6Addresses == null ? 0 : secondaryIPv6Addresses!.hashCode) +
      (endpointID == null ? 0 : endpointID!.hashCode) +
      (gateway == null ? 0 : gateway!.hashCode) +
      (globalIPv6Address == null ? 0 : globalIPv6Address!.hashCode) +
      (globalIPv6PrefixLen == null ? 0 : globalIPv6PrefixLen!.hashCode) +
      (iPAddress == null ? 0 : iPAddress!.hashCode) +
      (iPPrefixLen == null ? 0 : iPPrefixLen!.hashCode) +
      (iPv6Gateway == null ? 0 : iPv6Gateway!.hashCode) +
      (macAddress == null ? 0 : macAddress!.hashCode) +
      (networks.hashCode);

  @override
  String toString() =>
      'NetworkSettings[bridge=$bridge, sandboxID=$sandboxID, hairpinMode=$hairpinMode, linkLocalIPv6Address=$linkLocalIPv6Address, linkLocalIPv6PrefixLen=$linkLocalIPv6PrefixLen, ports=$ports, sandboxKey=$sandboxKey, secondaryIPAddresses=$secondaryIPAddresses, secondaryIPv6Addresses=$secondaryIPv6Addresses, endpointID=$endpointID, gateway=$gateway, globalIPv6Address=$globalIPv6Address, globalIPv6PrefixLen=$globalIPv6PrefixLen, iPAddress=$iPAddress, iPPrefixLen=$iPPrefixLen, iPv6Gateway=$iPv6Gateway, macAddress=$macAddress, networks=$networks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bridge != null) {
      json[r'Bridge'] = this.bridge;
    } else {
      json[r'Bridge'] = null;
    }
    if (this.sandboxID != null) {
      json[r'SandboxID'] = this.sandboxID;
    } else {
      json[r'SandboxID'] = null;
    }
    if (this.hairpinMode != null) {
      json[r'HairpinMode'] = this.hairpinMode;
    } else {
      json[r'HairpinMode'] = null;
    }
    if (this.linkLocalIPv6Address != null) {
      json[r'LinkLocalIPv6Address'] = this.linkLocalIPv6Address;
    } else {
      json[r'LinkLocalIPv6Address'] = null;
    }
    if (this.linkLocalIPv6PrefixLen != null) {
      json[r'LinkLocalIPv6PrefixLen'] = this.linkLocalIPv6PrefixLen;
    } else {
      json[r'LinkLocalIPv6PrefixLen'] = null;
    }
    json[r'Ports'] = this.ports;
    if (this.sandboxKey != null) {
      json[r'SandboxKey'] = this.sandboxKey;
    } else {
      json[r'SandboxKey'] = null;
    }
    if (this.secondaryIPAddresses != null) {
      json[r'SecondaryIPAddresses'] = this.secondaryIPAddresses;
    } else {
      json[r'SecondaryIPAddresses'] = null;
    }
    if (this.secondaryIPv6Addresses != null) {
      json[r'SecondaryIPv6Addresses'] = this.secondaryIPv6Addresses;
    } else {
      json[r'SecondaryIPv6Addresses'] = null;
    }
    if (this.endpointID != null) {
      json[r'EndpointID'] = this.endpointID;
    } else {
      json[r'EndpointID'] = null;
    }
    if (this.gateway != null) {
      json[r'Gateway'] = this.gateway;
    } else {
      json[r'Gateway'] = null;
    }
    if (this.globalIPv6Address != null) {
      json[r'GlobalIPv6Address'] = this.globalIPv6Address;
    } else {
      json[r'GlobalIPv6Address'] = null;
    }
    if (this.globalIPv6PrefixLen != null) {
      json[r'GlobalIPv6PrefixLen'] = this.globalIPv6PrefixLen;
    } else {
      json[r'GlobalIPv6PrefixLen'] = null;
    }
    if (this.iPAddress != null) {
      json[r'IPAddress'] = this.iPAddress;
    } else {
      json[r'IPAddress'] = null;
    }
    if (this.iPPrefixLen != null) {
      json[r'IPPrefixLen'] = this.iPPrefixLen;
    } else {
      json[r'IPPrefixLen'] = null;
    }
    if (this.iPv6Gateway != null) {
      json[r'IPv6Gateway'] = this.iPv6Gateway;
    } else {
      json[r'IPv6Gateway'] = null;
    }
    if (this.macAddress != null) {
      json[r'MacAddress'] = this.macAddress;
    } else {
      json[r'MacAddress'] = null;
    }
    json[r'Networks'] = this.networks;
    return json;
  }

  /// Returns a new [NetworkSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NetworkSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "NetworkSettings[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "NetworkSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NetworkSettings(
        bridge: mapValueOfType<String>(json, r'Bridge'),
        sandboxID: mapValueOfType<String>(json, r'SandboxID'),
        hairpinMode: mapValueOfType<bool>(json, r'HairpinMode'),
        linkLocalIPv6Address:
            mapValueOfType<String>(json, r'LinkLocalIPv6Address'),
        linkLocalIPv6PrefixLen:
            mapValueOfType<int>(json, r'LinkLocalIPv6PrefixLen'),
        ports: json[r'Ports'] == null
            ? const {}
            : PortBinding.mapListFromJson(json[r'Ports']),
        sandboxKey: mapValueOfType<String>(json, r'SandboxKey'),
        secondaryIPAddresses:
            Address.listFromJson(json[r'SecondaryIPAddresses']),
        secondaryIPv6Addresses:
            Address.listFromJson(json[r'SecondaryIPv6Addresses']),
        endpointID: mapValueOfType<String>(json, r'EndpointID'),
        gateway: mapValueOfType<String>(json, r'Gateway'),
        globalIPv6Address: mapValueOfType<String>(json, r'GlobalIPv6Address'),
        globalIPv6PrefixLen: mapValueOfType<int>(json, r'GlobalIPv6PrefixLen'),
        iPAddress: mapValueOfType<String>(json, r'IPAddress'),
        iPPrefixLen: mapValueOfType<int>(json, r'IPPrefixLen'),
        iPv6Gateway: mapValueOfType<String>(json, r'IPv6Gateway'),
        macAddress: mapValueOfType<String>(json, r'MacAddress'),
        networks: EndpointSettings.mapFromJson(json[r'Networks']),
      );
    }
    return null;
  }

  static List<NetworkSettings> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NetworkSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NetworkSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NetworkSettings> mapFromJson(dynamic json) {
    final map = <String, NetworkSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NetworkSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NetworkSettings-objects as value to a dart map
  static Map<String, List<NetworkSettings>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NetworkSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NetworkSettings.listFromJson(
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

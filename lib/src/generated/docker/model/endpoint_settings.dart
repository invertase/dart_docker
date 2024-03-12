//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class EndpointSettings {
  /// Returns a new [EndpointSettings] instance.
  EndpointSettings({
    this.iPAMConfig,
    this.links = const [],
    this.macAddress,
    this.aliases = const [],
    this.networkID,
    this.endpointID,
    this.gateway,
    this.iPAddress,
    this.iPPrefixLen,
    this.iPv6Gateway,
    this.globalIPv6Address,
    this.globalIPv6PrefixLen,
    this.driverOpts = const {},
    this.dNSNames = const [],
  });

  EndpointIPAMConfig? iPAMConfig;

  List<String> links;

  /// MAC address for the endpoint on this network. The network driver might ignore this parameter.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? macAddress;

  List<String> aliases;

  /// Unique ID of the network.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? networkID;

  /// Unique ID for the service endpoint in a Sandbox.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endpointID;

  /// Gateway address for this network.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gateway;

  /// IPv4 address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iPAddress;

  /// Mask length of the IPv4 address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? iPPrefixLen;

  /// IPv6 gateway address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iPv6Gateway;

  /// Global IPv6 address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? globalIPv6Address;

  /// Mask length of the global IPv6 address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? globalIPv6PrefixLen;

  /// DriverOpts is a mapping of driver options and values. These options are passed directly to the driver and are driver specific.
  Map<String, String>? driverOpts;

  /// List of all DNS names an endpoint has on a specific network. This list is based on the container name, network aliases, container short ID, and hostname.  These DNS names are non-fully qualified but can contain several dots. You can get fully qualified DNS names by appending `.<network-name>`. For instance, if container name is `my.ctr` and the network is named `testnet`, `DNSNames` will contain `my.ctr` and the FQDN will be `my.ctr.testnet`.
  List<String> dNSNames;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EndpointSettings &&
          other.iPAMConfig == iPAMConfig &&
          _deepEquality.equals(other.links, links) &&
          other.macAddress == macAddress &&
          _deepEquality.equals(other.aliases, aliases) &&
          other.networkID == networkID &&
          other.endpointID == endpointID &&
          other.gateway == gateway &&
          other.iPAddress == iPAddress &&
          other.iPPrefixLen == iPPrefixLen &&
          other.iPv6Gateway == iPv6Gateway &&
          other.globalIPv6Address == globalIPv6Address &&
          other.globalIPv6PrefixLen == globalIPv6PrefixLen &&
          _deepEquality.equals(other.driverOpts, driverOpts) &&
          _deepEquality.equals(other.dNSNames, dNSNames);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (iPAMConfig == null ? 0 : iPAMConfig!.hashCode) +
      (links.hashCode) +
      (macAddress == null ? 0 : macAddress!.hashCode) +
      (aliases.hashCode) +
      (networkID == null ? 0 : networkID!.hashCode) +
      (endpointID == null ? 0 : endpointID!.hashCode) +
      (gateway == null ? 0 : gateway!.hashCode) +
      (iPAddress == null ? 0 : iPAddress!.hashCode) +
      (iPPrefixLen == null ? 0 : iPPrefixLen!.hashCode) +
      (iPv6Gateway == null ? 0 : iPv6Gateway!.hashCode) +
      (globalIPv6Address == null ? 0 : globalIPv6Address!.hashCode) +
      (globalIPv6PrefixLen == null ? 0 : globalIPv6PrefixLen!.hashCode) +
      (driverOpts == null ? 0 : driverOpts!.hashCode) +
      (dNSNames.hashCode);

  @override
  String toString() =>
      'EndpointSettings[iPAMConfig=$iPAMConfig, links=$links, macAddress=$macAddress, aliases=$aliases, networkID=$networkID, endpointID=$endpointID, gateway=$gateway, iPAddress=$iPAddress, iPPrefixLen=$iPPrefixLen, iPv6Gateway=$iPv6Gateway, globalIPv6Address=$globalIPv6Address, globalIPv6PrefixLen=$globalIPv6PrefixLen, driverOpts=$driverOpts, dNSNames=$dNSNames]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.iPAMConfig != null) {
      json[r'IPAMConfig'] = this.iPAMConfig;
    } else {
      json[r'IPAMConfig'] = null;
    }
    json[r'Links'] = this.links;
    if (this.macAddress != null) {
      json[r'MacAddress'] = this.macAddress;
    } else {
      json[r'MacAddress'] = null;
    }
    json[r'Aliases'] = this.aliases;
    if (this.networkID != null) {
      json[r'NetworkID'] = this.networkID;
    } else {
      json[r'NetworkID'] = null;
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
    if (this.driverOpts != null) {
      json[r'DriverOpts'] = this.driverOpts;
    } else {
      json[r'DriverOpts'] = null;
    }
    json[r'DNSNames'] = this.dNSNames;
    return json;
  }

  /// Returns a new [EndpointSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EndpointSettings[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EndpointSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EndpointSettings(
        iPAMConfig: EndpointIPAMConfig.fromJson(json[r'IPAMConfig']),
        links: json[r'Links'] is Iterable
            ? (json[r'Links'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        macAddress: mapValueOfType<String>(json, r'MacAddress'),
        aliases: json[r'Aliases'] is Iterable
            ? (json[r'Aliases'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        networkID: mapValueOfType<String>(json, r'NetworkID'),
        endpointID: mapValueOfType<String>(json, r'EndpointID'),
        gateway: mapValueOfType<String>(json, r'Gateway'),
        iPAddress: mapValueOfType<String>(json, r'IPAddress'),
        iPPrefixLen: mapValueOfType<int>(json, r'IPPrefixLen'),
        iPv6Gateway: mapValueOfType<String>(json, r'IPv6Gateway'),
        globalIPv6Address: mapValueOfType<String>(json, r'GlobalIPv6Address'),
        globalIPv6PrefixLen: mapValueOfType<int>(json, r'GlobalIPv6PrefixLen'),
        driverOpts:
            mapCastOfType<String, String>(json, r'DriverOpts') ?? const {},
        dNSNames: json[r'DNSNames'] is Iterable
            ? (json[r'DNSNames'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<EndpointSettings> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointSettings> mapFromJson(dynamic json) {
    final map = <String, EndpointSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointSettings-objects as value to a dart map
  static Map<String, List<EndpointSettings>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EndpointSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointSettings.listFromJson(
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

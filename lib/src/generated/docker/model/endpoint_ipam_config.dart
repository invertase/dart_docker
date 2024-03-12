//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class EndpointIPAMConfig {
  /// Returns a new [EndpointIPAMConfig] instance.
  EndpointIPAMConfig({
    this.iPv4Address,
    this.iPv6Address,
    this.linkLocalIPs = const [],
  });

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

  List<String> linkLocalIPs;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EndpointIPAMConfig &&
          other.iPv4Address == iPv4Address &&
          other.iPv6Address == iPv6Address &&
          _deepEquality.equals(other.linkLocalIPs, linkLocalIPs);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (iPv4Address == null ? 0 : iPv4Address!.hashCode) +
      (iPv6Address == null ? 0 : iPv6Address!.hashCode) +
      (linkLocalIPs.hashCode);

  @override
  String toString() =>
      'EndpointIPAMConfig[iPv4Address=$iPv4Address, iPv6Address=$iPv6Address, linkLocalIPs=$linkLocalIPs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    json[r'LinkLocalIPs'] = this.linkLocalIPs;
    return json;
  }

  /// Returns a new [EndpointIPAMConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointIPAMConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EndpointIPAMConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EndpointIPAMConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EndpointIPAMConfig(
        iPv4Address: mapValueOfType<String>(json, r'IPv4Address'),
        iPv6Address: mapValueOfType<String>(json, r'IPv6Address'),
        linkLocalIPs: json[r'LinkLocalIPs'] is Iterable
            ? (json[r'LinkLocalIPs'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<EndpointIPAMConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointIPAMConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointIPAMConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointIPAMConfig> mapFromJson(dynamic json) {
    final map = <String, EndpointIPAMConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointIPAMConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointIPAMConfig-objects as value to a dart map
  static Map<String, List<EndpointIPAMConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EndpointIPAMConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointIPAMConfig.listFromJson(
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

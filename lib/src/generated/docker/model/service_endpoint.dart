//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ServiceEndpoint {
  /// Returns a new [ServiceEndpoint] instance.
  ServiceEndpoint({
    this.spec,
    this.ports = const [],
    this.virtualIPs = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EndpointSpec? spec;

  List<EndpointPortConfig> ports;

  List<ServiceEndpointVirtualIPsInner> virtualIPs;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServiceEndpoint &&
          other.spec == spec &&
          _deepEquality.equals(other.ports, ports) &&
          _deepEquality.equals(other.virtualIPs, virtualIPs);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (spec == null ? 0 : spec!.hashCode) +
      (ports.hashCode) +
      (virtualIPs.hashCode);

  @override
  String toString() =>
      'ServiceEndpoint[spec=$spec, ports=$ports, virtualIPs=$virtualIPs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.spec != null) {
      json[r'Spec'] = this.spec;
    } else {
      json[r'Spec'] = null;
    }
    json[r'Ports'] = this.ports;
    json[r'VirtualIPs'] = this.virtualIPs;
    return json;
  }

  /// Returns a new [ServiceEndpoint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceEndpoint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ServiceEndpoint[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ServiceEndpoint[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServiceEndpoint(
        spec: EndpointSpec.fromJson(json[r'Spec']),
        ports: EndpointPortConfig.listFromJson(json[r'Ports']),
        virtualIPs:
            ServiceEndpointVirtualIPsInner.listFromJson(json[r'VirtualIPs']),
      );
    }
    return null;
  }

  static List<ServiceEndpoint> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ServiceEndpoint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceEndpoint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServiceEndpoint> mapFromJson(dynamic json) {
    final map = <String, ServiceEndpoint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceEndpoint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServiceEndpoint-objects as value to a dart map
  static Map<String, List<ServiceEndpoint>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ServiceEndpoint>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServiceEndpoint.listFromJson(
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

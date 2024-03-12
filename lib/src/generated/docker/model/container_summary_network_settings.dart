//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ContainerSummaryNetworkSettings {
  /// Returns a new [ContainerSummaryNetworkSettings] instance.
  ContainerSummaryNetworkSettings({
    this.networks = const {},
  });

  Map<String, EndpointSettings> networks;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContainerSummaryNetworkSettings &&
          _deepEquality.equals(other.networks, networks);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (networks.hashCode);

  @override
  String toString() => 'ContainerSummaryNetworkSettings[networks=$networks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Networks'] = this.networks;
    return json;
  }

  /// Returns a new [ContainerSummaryNetworkSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContainerSummaryNetworkSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ContainerSummaryNetworkSettings[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ContainerSummaryNetworkSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContainerSummaryNetworkSettings(
        networks: EndpointSettings.mapFromJson(json[r'Networks']),
      );
    }
    return null;
  }

  static List<ContainerSummaryNetworkSettings> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ContainerSummaryNetworkSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContainerSummaryNetworkSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContainerSummaryNetworkSettings> mapFromJson(
      dynamic json) {
    final map = <String, ContainerSummaryNetworkSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContainerSummaryNetworkSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContainerSummaryNetworkSettings-objects as value to a dart map
  static Map<String, List<ContainerSummaryNetworkSettings>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ContainerSummaryNetworkSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContainerSummaryNetworkSettings.listFromJson(
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

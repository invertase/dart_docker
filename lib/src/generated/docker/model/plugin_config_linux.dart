//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class PluginConfigLinux {
  /// Returns a new [PluginConfigLinux] instance.
  PluginConfigLinux({
    this.capabilities = const [],
    required this.allowAllDevices,
    this.devices = const [],
  });

  List<String> capabilities;

  bool allowAllDevices;

  List<PluginDevice> devices;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PluginConfigLinux &&
          _deepEquality.equals(other.capabilities, capabilities) &&
          other.allowAllDevices == allowAllDevices &&
          _deepEquality.equals(other.devices, devices);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (capabilities.hashCode) + (allowAllDevices.hashCode) + (devices.hashCode);

  @override
  String toString() =>
      'PluginConfigLinux[capabilities=$capabilities, allowAllDevices=$allowAllDevices, devices=$devices]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Capabilities'] = this.capabilities;
    json[r'AllowAllDevices'] = this.allowAllDevices;
    json[r'Devices'] = this.devices;
    return json;
  }

  /// Returns a new [PluginConfigLinux] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PluginConfigLinux? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PluginConfigLinux[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PluginConfigLinux[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PluginConfigLinux(
        capabilities: json[r'Capabilities'] is Iterable
            ? (json[r'Capabilities'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        allowAllDevices: mapValueOfType<bool>(json, r'AllowAllDevices')!,
        devices: PluginDevice.listFromJson(json[r'Devices']),
      );
    }
    return null;
  }

  static List<PluginConfigLinux> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PluginConfigLinux>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PluginConfigLinux.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PluginConfigLinux> mapFromJson(dynamic json) {
    final map = <String, PluginConfigLinux>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PluginConfigLinux.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PluginConfigLinux-objects as value to a dart map
  static Map<String, List<PluginConfigLinux>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PluginConfigLinux>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PluginConfigLinux.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'Capabilities',
    'AllowAllDevices',
    'Devices',
  };
}

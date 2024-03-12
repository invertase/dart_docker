//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class PluginInterfaceType {
  /// Returns a new [PluginInterfaceType] instance.
  PluginInterfaceType({
    required this.prefix,
    required this.capability,
    required this.version,
  });

  String prefix;

  String capability;

  String version;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PluginInterfaceType &&
          other.prefix == prefix &&
          other.capability == capability &&
          other.version == version;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (prefix.hashCode) + (capability.hashCode) + (version.hashCode);

  @override
  String toString() =>
      'PluginInterfaceType[prefix=$prefix, capability=$capability, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Prefix'] = this.prefix;
    json[r'Capability'] = this.capability;
    json[r'Version'] = this.version;
    return json;
  }

  /// Returns a new [PluginInterfaceType] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PluginInterfaceType? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PluginInterfaceType[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PluginInterfaceType[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PluginInterfaceType(
        prefix: mapValueOfType<String>(json, r'Prefix')!,
        capability: mapValueOfType<String>(json, r'Capability')!,
        version: mapValueOfType<String>(json, r'Version')!,
      );
    }
    return null;
  }

  static List<PluginInterfaceType> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PluginInterfaceType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PluginInterfaceType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PluginInterfaceType> mapFromJson(dynamic json) {
    final map = <String, PluginInterfaceType>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PluginInterfaceType.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PluginInterfaceType-objects as value to a dart map
  static Map<String, List<PluginInterfaceType>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PluginInterfaceType>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PluginInterfaceType.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'Prefix',
    'Capability',
    'Version',
  };
}

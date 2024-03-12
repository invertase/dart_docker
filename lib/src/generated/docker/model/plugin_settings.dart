//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class PluginSettings {
  /// Returns a new [PluginSettings] instance.
  PluginSettings({
    this.mounts = const [],
    this.env = const [],
    this.args = const [],
    this.devices = const [],
  });

  List<PluginMount> mounts;

  List<String> env;

  List<String> args;

  List<PluginDevice> devices;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PluginSettings &&
          _deepEquality.equals(other.mounts, mounts) &&
          _deepEquality.equals(other.env, env) &&
          _deepEquality.equals(other.args, args) &&
          _deepEquality.equals(other.devices, devices);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (mounts.hashCode) + (env.hashCode) + (args.hashCode) + (devices.hashCode);

  @override
  String toString() =>
      'PluginSettings[mounts=$mounts, env=$env, args=$args, devices=$devices]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Mounts'] = this.mounts;
    json[r'Env'] = this.env;
    json[r'Args'] = this.args;
    json[r'Devices'] = this.devices;
    return json;
  }

  /// Returns a new [PluginSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PluginSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PluginSettings[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PluginSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PluginSettings(
        mounts: PluginMount.listFromJson(json[r'Mounts']),
        env: json[r'Env'] is Iterable
            ? (json[r'Env'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        args: json[r'Args'] is Iterable
            ? (json[r'Args'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        devices: PluginDevice.listFromJson(json[r'Devices']),
      );
    }
    return null;
  }

  static List<PluginSettings> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PluginSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PluginSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PluginSettings> mapFromJson(dynamic json) {
    final map = <String, PluginSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PluginSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PluginSettings-objects as value to a dart map
  static Map<String, List<PluginSettings>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PluginSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PluginSettings.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'Mounts',
    'Env',
    'Args',
    'Devices',
  };
}

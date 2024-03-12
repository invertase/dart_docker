//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class Plugin {
  /// Returns a new [Plugin] instance.
  Plugin({
    this.id,
    required this.name,
    required this.enabled,
    required this.settings,
    this.pluginReference,
    required this.config,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  String name;

  /// True if the plugin is running. False if the plugin is not running, only installed.
  bool enabled;

  PluginSettings settings;

  /// plugin remote reference used to push/pull the plugin
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pluginReference;

  PluginConfig config;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Plugin &&
          other.id == id &&
          other.name == name &&
          other.enabled == enabled &&
          other.settings == settings &&
          other.pluginReference == pluginReference &&
          other.config == config;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (name.hashCode) +
      (enabled.hashCode) +
      (settings.hashCode) +
      (pluginReference == null ? 0 : pluginReference!.hashCode) +
      (config.hashCode);

  @override
  String toString() =>
      'Plugin[id=$id, name=$name, enabled=$enabled, settings=$settings, pluginReference=$pluginReference, config=$config]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'Id'] = this.id;
    } else {
      json[r'Id'] = null;
    }
    json[r'Name'] = this.name;
    json[r'Enabled'] = this.enabled;
    json[r'Settings'] = this.settings;
    if (this.pluginReference != null) {
      json[r'PluginReference'] = this.pluginReference;
    } else {
      json[r'PluginReference'] = null;
    }
    json[r'Config'] = this.config;
    return json;
  }

  /// Returns a new [Plugin] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Plugin? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Plugin[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Plugin[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Plugin(
        id: mapValueOfType<String>(json, r'Id'),
        name: mapValueOfType<String>(json, r'Name')!,
        enabled: mapValueOfType<bool>(json, r'Enabled')!,
        settings: PluginSettings.fromJson(json[r'Settings'])!,
        pluginReference: mapValueOfType<String>(json, r'PluginReference'),
        config: PluginConfig.fromJson(json[r'Config'])!,
      );
    }
    return null;
  }

  static List<Plugin> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Plugin>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Plugin.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Plugin> mapFromJson(dynamic json) {
    final map = <String, Plugin>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Plugin.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Plugin-objects as value to a dart map
  static Map<String, List<Plugin>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Plugin>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Plugin.listFromJson(
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
    'Enabled',
    'Settings',
    'Config',
  };
}

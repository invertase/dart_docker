//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class PluginDevice {
  /// Returns a new [PluginDevice] instance.
  PluginDevice({
    required this.name,
    required this.description,
    this.settable = const [],
    required this.path,
  });

  String name;

  String description;

  List<String> settable;

  String path;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PluginDevice &&
          other.name == name &&
          other.description == description &&
          _deepEquality.equals(other.settable, settable) &&
          other.path == path;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name.hashCode) +
      (description.hashCode) +
      (settable.hashCode) +
      (path.hashCode);

  @override
  String toString() =>
      'PluginDevice[name=$name, description=$description, settable=$settable, path=$path]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Name'] = this.name;
    json[r'Description'] = this.description;
    json[r'Settable'] = this.settable;
    json[r'Path'] = this.path;
    return json;
  }

  /// Returns a new [PluginDevice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PluginDevice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PluginDevice[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PluginDevice[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PluginDevice(
        name: mapValueOfType<String>(json, r'Name')!,
        description: mapValueOfType<String>(json, r'Description')!,
        settable: json[r'Settable'] is Iterable
            ? (json[r'Settable'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        path: mapValueOfType<String>(json, r'Path')!,
      );
    }
    return null;
  }

  static List<PluginDevice> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PluginDevice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PluginDevice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PluginDevice> mapFromJson(dynamic json) {
    final map = <String, PluginDevice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PluginDevice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PluginDevice-objects as value to a dart map
  static Map<String, List<PluginDevice>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PluginDevice>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PluginDevice.listFromJson(
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
    'Description',
    'Settable',
    'Path',
  };
}

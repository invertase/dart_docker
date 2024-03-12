//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class PluginConfigArgs {
  /// Returns a new [PluginConfigArgs] instance.
  PluginConfigArgs({
    required this.name,
    required this.description,
    this.settable = const [],
    this.value = const [],
  });

  String name;

  String description;

  List<String> settable;

  List<String> value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PluginConfigArgs &&
          other.name == name &&
          other.description == description &&
          _deepEquality.equals(other.settable, settable) &&
          _deepEquality.equals(other.value, value);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name.hashCode) +
      (description.hashCode) +
      (settable.hashCode) +
      (value.hashCode);

  @override
  String toString() =>
      'PluginConfigArgs[name=$name, description=$description, settable=$settable, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Name'] = this.name;
    json[r'Description'] = this.description;
    json[r'Settable'] = this.settable;
    json[r'Value'] = this.value;
    return json;
  }

  /// Returns a new [PluginConfigArgs] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PluginConfigArgs? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PluginConfigArgs[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PluginConfigArgs[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PluginConfigArgs(
        name: mapValueOfType<String>(json, r'Name')!,
        description: mapValueOfType<String>(json, r'Description')!,
        settable: json[r'Settable'] is Iterable
            ? (json[r'Settable'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        value: json[r'Value'] is Iterable
            ? (json[r'Value'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<PluginConfigArgs> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PluginConfigArgs>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PluginConfigArgs.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PluginConfigArgs> mapFromJson(dynamic json) {
    final map = <String, PluginConfigArgs>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PluginConfigArgs.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PluginConfigArgs-objects as value to a dart map
  static Map<String, List<PluginConfigArgs>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PluginConfigArgs>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PluginConfigArgs.listFromJson(
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
    'Value',
  };
}

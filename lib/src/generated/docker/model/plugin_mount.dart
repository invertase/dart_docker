//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class PluginMount {
  /// Returns a new [PluginMount] instance.
  PluginMount({
    required this.name,
    required this.description,
    this.settable = const [],
    required this.source_,
    required this.destination,
    required this.type,
    this.options = const [],
  });

  String name;

  String description;

  List<String> settable;

  String source_;

  String destination;

  String type;

  List<String> options;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PluginMount &&
          other.name == name &&
          other.description == description &&
          _deepEquality.equals(other.settable, settable) &&
          other.source_ == source_ &&
          other.destination == destination &&
          other.type == type &&
          _deepEquality.equals(other.options, options);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name.hashCode) +
      (description.hashCode) +
      (settable.hashCode) +
      (source_.hashCode) +
      (destination.hashCode) +
      (type.hashCode) +
      (options.hashCode);

  @override
  String toString() =>
      'PluginMount[name=$name, description=$description, settable=$settable, source_=$source_, destination=$destination, type=$type, options=$options]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Name'] = this.name;
    json[r'Description'] = this.description;
    json[r'Settable'] = this.settable;
    json[r'Source'] = this.source_;
    json[r'Destination'] = this.destination;
    json[r'Type'] = this.type;
    json[r'Options'] = this.options;
    return json;
  }

  /// Returns a new [PluginMount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PluginMount? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PluginMount[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PluginMount[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PluginMount(
        name: mapValueOfType<String>(json, r'Name')!,
        description: mapValueOfType<String>(json, r'Description')!,
        settable: json[r'Settable'] is Iterable
            ? (json[r'Settable'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        source_: mapValueOfType<String>(json, r'Source')!,
        destination: mapValueOfType<String>(json, r'Destination')!,
        type: mapValueOfType<String>(json, r'Type')!,
        options: json[r'Options'] is Iterable
            ? (json[r'Options'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<PluginMount> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PluginMount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PluginMount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PluginMount> mapFromJson(dynamic json) {
    final map = <String, PluginMount>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PluginMount.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PluginMount-objects as value to a dart map
  static Map<String, List<PluginMount>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PluginMount>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PluginMount.listFromJson(
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
    'Source',
    'Destination',
    'Type',
    'Options',
  };
}

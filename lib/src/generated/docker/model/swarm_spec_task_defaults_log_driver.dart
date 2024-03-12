//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class SwarmSpecTaskDefaultsLogDriver {
  /// Returns a new [SwarmSpecTaskDefaultsLogDriver] instance.
  SwarmSpecTaskDefaultsLogDriver({
    this.name,
    this.options = const {},
  });

  /// The log driver to use as a default for new tasks.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Driver-specific options for the selectd log driver, specified as key/value pairs.
  Map<String, String> options;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SwarmSpecTaskDefaultsLogDriver &&
          other.name == name &&
          _deepEquality.equals(other.options, options);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) + (options.hashCode);

  @override
  String toString() =>
      'SwarmSpecTaskDefaultsLogDriver[name=$name, options=$options]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    json[r'Options'] = this.options;
    return json;
  }

  /// Returns a new [SwarmSpecTaskDefaultsLogDriver] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SwarmSpecTaskDefaultsLogDriver? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SwarmSpecTaskDefaultsLogDriver[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SwarmSpecTaskDefaultsLogDriver[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SwarmSpecTaskDefaultsLogDriver(
        name: mapValueOfType<String>(json, r'Name'),
        options: mapCastOfType<String, String>(json, r'Options') ?? const {},
      );
    }
    return null;
  }

  static List<SwarmSpecTaskDefaultsLogDriver> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SwarmSpecTaskDefaultsLogDriver>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SwarmSpecTaskDefaultsLogDriver.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SwarmSpecTaskDefaultsLogDriver> mapFromJson(dynamic json) {
    final map = <String, SwarmSpecTaskDefaultsLogDriver>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SwarmSpecTaskDefaultsLogDriver.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SwarmSpecTaskDefaultsLogDriver-objects as value to a dart map
  static Map<String, List<SwarmSpecTaskDefaultsLogDriver>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SwarmSpecTaskDefaultsLogDriver>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SwarmSpecTaskDefaultsLogDriver.listFromJson(
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

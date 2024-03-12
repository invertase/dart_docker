//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class SystemVersionComponentsInner {
  /// Returns a new [SystemVersionComponentsInner] instance.
  SystemVersionComponentsInner({
    required this.name,
    required this.version,
    this.details,
  });

  /// Name of the component
  String name;

  /// Version of the component
  String version;

  /// Key/value pairs of strings with additional information about the component. These values are intended for informational purposes only, and their content is not defined, and not part of the API specification.  These messages can be printed by the client as information to the user.
  Object? details;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SystemVersionComponentsInner &&
          other.name == name &&
          other.version == version &&
          other.details == details;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name.hashCode) +
      (version.hashCode) +
      (details == null ? 0 : details!.hashCode);

  @override
  String toString() =>
      'SystemVersionComponentsInner[name=$name, version=$version, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Name'] = this.name;
    json[r'Version'] = this.version;
    if (this.details != null) {
      json[r'Details'] = this.details;
    } else {
      json[r'Details'] = null;
    }
    return json;
  }

  /// Returns a new [SystemVersionComponentsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SystemVersionComponentsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SystemVersionComponentsInner[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SystemVersionComponentsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SystemVersionComponentsInner(
        name: mapValueOfType<String>(json, r'Name')!,
        version: mapValueOfType<String>(json, r'Version')!,
        details: mapValueOfType<Object>(json, r'Details'),
      );
    }
    return null;
  }

  static List<SystemVersionComponentsInner> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SystemVersionComponentsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SystemVersionComponentsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SystemVersionComponentsInner> mapFromJson(dynamic json) {
    final map = <String, SystemVersionComponentsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SystemVersionComponentsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SystemVersionComponentsInner-objects as value to a dart map
  static Map<String, List<SystemVersionComponentsInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SystemVersionComponentsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SystemVersionComponentsInner.listFromJson(
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
    'Version',
  };
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ConfigSpec {
  /// Returns a new [ConfigSpec] instance.
  ConfigSpec({
    this.name,
    this.labels = const {},
    this.data,
    this.templating,
  });

  /// User-defined name of the config.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// User-defined key/value metadata.
  Map<String, String> labels;

  /// Base64-url-safe-encoded ([RFC 4648](https://tools.ietf.org/html/rfc4648#section-5)) config data.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? data;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Driver? templating;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConfigSpec &&
          other.name == name &&
          _deepEquality.equals(other.labels, labels) &&
          other.data == data &&
          other.templating == templating;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) +
      (labels.hashCode) +
      (data == null ? 0 : data!.hashCode) +
      (templating == null ? 0 : templating!.hashCode);

  @override
  String toString() =>
      'ConfigSpec[name=$name, labels=$labels, data=$data, templating=$templating]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    json[r'Labels'] = this.labels;
    if (this.data != null) {
      json[r'Data'] = this.data;
    } else {
      json[r'Data'] = null;
    }
    if (this.templating != null) {
      json[r'Templating'] = this.templating;
    } else {
      json[r'Templating'] = null;
    }
    return json;
  }

  /// Returns a new [ConfigSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConfigSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ConfigSpec[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ConfigSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConfigSpec(
        name: mapValueOfType<String>(json, r'Name'),
        labels: mapCastOfType<String, String>(json, r'Labels') ?? const {},
        data: mapValueOfType<String>(json, r'Data'),
        templating: Driver.fromJson(json[r'Templating']),
      );
    }
    return null;
  }

  static List<ConfigSpec> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ConfigSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConfigSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConfigSpec> mapFromJson(dynamic json) {
    final map = <String, ConfigSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConfigSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConfigSpec-objects as value to a dart map
  static Map<String, List<ConfigSpec>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ConfigSpec>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConfigSpec.listFromJson(
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

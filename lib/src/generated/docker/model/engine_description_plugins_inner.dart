//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class EngineDescriptionPluginsInner {
  /// Returns a new [EngineDescriptionPluginsInner] instance.
  EngineDescriptionPluginsInner({
    this.type,
    this.name,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EngineDescriptionPluginsInner &&
          other.type == type &&
          other.name == name;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (type == null ? 0 : type!.hashCode) + (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'EngineDescriptionPluginsInner[type=$type, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'Type'] = this.type;
    } else {
      json[r'Type'] = null;
    }
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    return json;
  }

  /// Returns a new [EngineDescriptionPluginsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EngineDescriptionPluginsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EngineDescriptionPluginsInner[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EngineDescriptionPluginsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EngineDescriptionPluginsInner(
        type: mapValueOfType<String>(json, r'Type'),
        name: mapValueOfType<String>(json, r'Name'),
      );
    }
    return null;
  }

  static List<EngineDescriptionPluginsInner> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EngineDescriptionPluginsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EngineDescriptionPluginsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EngineDescriptionPluginsInner> mapFromJson(dynamic json) {
    final map = <String, EngineDescriptionPluginsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EngineDescriptionPluginsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EngineDescriptionPluginsInner-objects as value to a dart map
  static Map<String, List<EngineDescriptionPluginsInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EngineDescriptionPluginsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EngineDescriptionPluginsInner.listFromJson(
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

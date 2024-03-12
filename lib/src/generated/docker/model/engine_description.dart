//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class EngineDescription {
  /// Returns a new [EngineDescription] instance.
  EngineDescription({
    this.engineVersion,
    this.labels = const {},
    this.plugins = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? engineVersion;

  Map<String, String> labels;

  List<EngineDescriptionPluginsInner> plugins;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EngineDescription &&
          other.engineVersion == engineVersion &&
          _deepEquality.equals(other.labels, labels) &&
          _deepEquality.equals(other.plugins, plugins);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (engineVersion == null ? 0 : engineVersion!.hashCode) +
      (labels.hashCode) +
      (plugins.hashCode);

  @override
  String toString() =>
      'EngineDescription[engineVersion=$engineVersion, labels=$labels, plugins=$plugins]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.engineVersion != null) {
      json[r'EngineVersion'] = this.engineVersion;
    } else {
      json[r'EngineVersion'] = null;
    }
    json[r'Labels'] = this.labels;
    json[r'Plugins'] = this.plugins;
    return json;
  }

  /// Returns a new [EngineDescription] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EngineDescription? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EngineDescription[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EngineDescription[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EngineDescription(
        engineVersion: mapValueOfType<String>(json, r'EngineVersion'),
        labels: mapCastOfType<String, String>(json, r'Labels') ?? const {},
        plugins: EngineDescriptionPluginsInner.listFromJson(json[r'Plugins']),
      );
    }
    return null;
  }

  static List<EngineDescription> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EngineDescription>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EngineDescription.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EngineDescription> mapFromJson(dynamic json) {
    final map = <String, EngineDescription>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EngineDescription.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EngineDescription-objects as value to a dart map
  static Map<String, List<EngineDescription>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EngineDescription>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EngineDescription.listFromJson(
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

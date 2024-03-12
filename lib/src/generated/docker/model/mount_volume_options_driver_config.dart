//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class MountVolumeOptionsDriverConfig {
  /// Returns a new [MountVolumeOptionsDriverConfig] instance.
  MountVolumeOptionsDriverConfig({
    this.name,
    this.options = const {},
  });

  /// Name of the driver to use to create the volume.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// key/value map of driver specific options.
  Map<String, String> options;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MountVolumeOptionsDriverConfig &&
          other.name == name &&
          _deepEquality.equals(other.options, options);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) + (options.hashCode);

  @override
  String toString() =>
      'MountVolumeOptionsDriverConfig[name=$name, options=$options]';

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

  /// Returns a new [MountVolumeOptionsDriverConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MountVolumeOptionsDriverConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MountVolumeOptionsDriverConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MountVolumeOptionsDriverConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MountVolumeOptionsDriverConfig(
        name: mapValueOfType<String>(json, r'Name'),
        options: mapCastOfType<String, String>(json, r'Options') ?? const {},
      );
    }
    return null;
  }

  static List<MountVolumeOptionsDriverConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MountVolumeOptionsDriverConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MountVolumeOptionsDriverConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MountVolumeOptionsDriverConfig> mapFromJson(dynamic json) {
    final map = <String, MountVolumeOptionsDriverConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MountVolumeOptionsDriverConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MountVolumeOptionsDriverConfig-objects as value to a dart map
  static Map<String, List<MountVolumeOptionsDriverConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MountVolumeOptionsDriverConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MountVolumeOptionsDriverConfig.listFromJson(
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
